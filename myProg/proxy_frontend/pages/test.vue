<template>
    <!-- eslint-disable -->
    <div>
        <a-row :gutter="16">
            <a-col :span="10">
                <a-card :body-style="{padding: '20px 24px 4px'}">
                    <div class="card-body">
                        <p style="font-weight: bold">添加、移除、查看、清空黑名单</p>
                        <p>/blklist add ["",""]</p>
                        <p>/blklist del ["",""]</p>
                        <p>/blklist show</p>
                        <p>/blklist clear</p>
                        <br/>
        
                        <p style="font-weight: bold">查看该节点的所有用户、移除某用户的使用权</p>
                        <p>/user remove ["",""]</p>
                        <p>/user show</p>
                        <p>/user clear</p>
                        <br/>
        
                        <p style="font-weight: bold">刷新代理服务器信息</p>
                        <p>/flush</p>
                        <br/>
                    </div>
                </a-card>
            </a-col>
            <a-col :span="10">
                <a-card :body-style="{padding: '20px 24px 43px'}">

                    <div class="card-body">
                        <p style="font-weight: bold">请输入命令</p>
                        <a-input v-model="command" placeholder="命令" style="width: 350px" id="command"/>
                        <span><pre id="output"></pre></span>
                    </div>

                    <div style="text-align: center">
                        <a-button type="primary" @click="runCommand">
                            执行
                        </a-button>
                        <a-tooltip title="将输入的命令发送给后端执行">
                            <a-icon type="question-circle" />
                        </a-tooltip>
                    </div>
                </a-card>
            </a-col>
        </a-row>
    </div>
</template>

<script>
import $ from 'jquery';

export default {
    data () {
        return {
            
        };
    },
    // mounted () {
    //     this.handle = setInterval(() => {
    //         if (this.autoupdate) { this.update(); }
    //     }, 2000);
    //     this.update();
    // },
    // destroyed () {
    //     if (this.handle) { clearInterval(this.handle); }
    //     this.handle = null;
    // },
    methods: {
        runCommand() {
        //  var command = $('#command').val();
        var command = this.command
         $.ajax({
             type: 'POST',
             url: 'http://127.0.0.1:8000/rcontrol/run',
             contentType: 'application/json',  // Add this line
             data: JSON.stringify({'command': command}),
             success: function(response) {
                 $('#output').text(response.output);
             },
             error: function(xhr, status, error) {
                 $('#output').text('Error occurred while running the command.');
             }
         });
     }
    }
};
</script>
