<template>
    <div>
        <a-row :gutter="16">
            <a-col :span="4">
                <a-card :body-style="{padding: '20px 24px 43px'}">
                    <div style="text-align: center">
                        <a-button type="primary" @click="end(0)">
                            停止爬取器
                        </a-button>
                        <a-tooltip title="尽力停止，正在进程中运行的线程无法停止">
                            <a-icon type="question-circle" />
                        </a-tooltip>
                    </div>
                    <br>
                    <div style="text-align: center">
                        <a-button type="primary" @click="end(2)">
                            停止验证器
                        </a-button>
                        <a-tooltip title="尽力停止，正在进程中运行的线程无法停止">
                            <a-icon type="question-circle" />
                        </a-tooltip>
                    </div>
                </a-card>
                <a-card :body-style="{padding: '20px 24px 43px'}">
                    <div style="text-align: center">
                        <a-button type="primary" @click="start(1)">
                            开启爬取器
                        </a-button>
                    </div>
                    <br>
                    <div style="text-align: center">
                        <a-button type="primary" @click="start(2)">
                            开启验证器
                        </a-button>
                    </div>
                </a-card>
                <a-table
                    :columns="columns"
                    :data-source="data"
                    row-key="type"
                    :pagination="false"
                    :bordered="true"
                >
                    <span slot="inDbCntTitle">
                        数据库中的代理数量
                        <a-tooltip>
                            <template #title>
                                <span>
                                    当前数据库中，有多少代理是这个爬取器爬到的。
                                    和`总共爬取代理数量`不同的地方在于，这个去掉了重复的和已经删除的代理。
                                </span>
                            </template>
                            <a-icon type="question-circle" />
                        </a-tooltip>
                    </span>
                </a-table>
            </a-col>
        </a-row>
        <br />
    </div>
</template>

<script>
const columns = [
    {
        title: '类型',
        dataIndex: 'type'
    },
    {
        title: '当前状态',
        dataIndex: 'status'
    }
];

export default {
    data () {
        return {
            start_type: null,
            end_type: null,
            columns,
            data: []
        };
    },
    mounted () {
        this.handle = setInterval(() => {
            if (this.autoupdate) { this.update(); }
        }, 2000);
        this.update();
    },
    methods: {
        async update () {
            const data = await this.$http.get('fetcher/get_tasks_status');
            this.data = data.data;
        },
        async end (end_type) {
            await this.$http.get('fetcher/end_fetch_and_validate?f=' + end_type);
            this.$message.success('停止成功');
        },
        async start (start_type) {
            await this.$http.get('fetcher/start_fetch_and_validate?f=' + start_type);
            this.$message.success('开启成功');
        }
    }
};
</script>
