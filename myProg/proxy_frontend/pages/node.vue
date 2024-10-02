<template>
    <!-- eslint-disable -->
    <div>
        <a-row :gutter="16">
            <a-col :span="4">
                <a-card :body-style="{padding: '20px 24px 14px'}">
                    <a-statistic
                        :value="num"
                        :value-style="{ color: '#3f8600' }"
                        style="margin-right: 50px"
                    >
                        <template #title>
                            <span>
                                节点总数
                                <a-tooltip title="目前数据库中的高级节点总数">
                                    <a-icon type="question-circle" />
                                </a-tooltip>
                            </span>
                        </template>
                    </a-statistic>
                </a-card>
            </a-col>
            <a-col :span="4">
                <a-card :body-style="{padding: '20px 24px 4px'}">
                    <p>
                        自动刷新:
                        <a-switch v-model="autoupdate" />
                    </p>
                    <p>刷新时间：{{ lastupdate }}</p>
                </a-card>
            </a-col>
        </a-row>
        <br />
        <a-table
            :columns="columns"
            :data-source="nodes"
            :row-key="(r) => `${r.protocol}://${r.ip}:${r.port}`"
            :bordered="true"
        >
            <span slot="latency" slot-scope="latency">
                <a-tag
                    :color="latency < 2000 ? 'green' : (latency < 4000 ? 'orange' : 'red')"
                >
                    {{ latency }}
                </a-tag>
            </span>
        </a-table>
    </div>
</template>

<script>
import moment from 'moment';

const columns = [
    {
        title: '代理类型',
        dataIndex: 'protocol'
    },
    {
        title: 'IP',
        dataIndex: 'ip'
    },
    {
        title: '端口',
        dataIndex: 'port'
    }
];

export default {
    data () {
        return {
            columns,
            nodes: [],
            num: 0,
            lastupdate: ''
        };
    },
    mounted () {
        this.handle = setInterval(() => {
            if (this.autoupdate) { this.update(); }
        }, 2000);
        this.update();
    },
    destroyed () {
        if (this.handle) { clearInterval(this.handle); }
        this.handle = null;
    },
    methods: {
        async update () {
            const data = await this.$http.get('node/get_nodes');
            this.nodes = data.nodes;
            this.num = data.num;
            this.lastupdate = moment().format('HH:mm:ss');
        }
    }
};
</script>
