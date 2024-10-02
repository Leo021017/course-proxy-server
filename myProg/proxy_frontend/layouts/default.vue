<template>
    <div>
        <a-config-provider :locale="locale">
            <a-layout class="layout-main">
                <a-layout-sider collapsible>
                    <div class="logo" >
                        <h2 style="color: #93b3b1; font-size: 18px;font-weight: bold; text-align: center;">代理控制端</h2>
                    </div>
                    <a-menu v-model="url_path" theme="dark" mode="inline">
                        <a-menu-item key="/proxy_control">
                            <NuxtLink to="/proxy_control">
                                <a-icon type="home" />
                                <span>控制台</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="/">
                            <NuxtLink to="/">
                                <a-icon type="retweet" />
                                <span>可用代理</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="/node">
                            <NuxtLink to="/node">
                                <a-icon type="flag" />
                                <span>高级代理节点</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="/fetchers">
                            <NuxtLink to="/fetchers">
                                <a-icon type="database" />
                                <span>爬取器状态</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="/WebSSH">
                            <NuxtLink to="/WebSSH">
                                <a-icon type="code" />
                                <span>SSH终端</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="/RemoteControl">
                            <NuxtLink to="/RemoteControl">
                                <a-icon type="cluster" />
                                <span>远程命令</span>
                            </NuxtLink>
                        </a-menu-item>
                        <a-menu-item key="admin">
                            <a href="http://127.0.0.1:8000/admin/login/?next=/admin/" target="_blank">
                                <a-icon type="lock" />
                                <span>管理</span>
                            </a>
                        </a-menu-item>
                        <a-menu-item key="github">
                            <a href="https://github.com/Leo021017" target="_blank">
                                <a-icon type="github" />
                                <span>Github主页</span>
                            </a>
                        </a-menu-item>
                    </a-menu>
                </a-layout-sider>
                <a-layout>
                    <a-layout-header style="background: #fff; padding: 0">
                    </a-layout-header>
                    <a-layout-content
                        :style="{ margin: '24px 16px', padding: '24px', background: '#fff' }"
                    >
                        <Nuxt />
                    </a-layout-content>
                </a-layout>
            </a-layout>
        </a-config-provider>
    </div>
</template>

<script>
import zh_CN from 'ant-design-vue/lib/locale-provider/zh_CN';
import moment from 'moment';

moment.locale('zh-cn');

export default {
    data () {
        return {
            locale: zh_CN,
            url_path: []
        };
    },
    watch: {
        $route () {
            this.updateNav();
        }
    },
    mounted () {
        this.updateNav();
    },
    methods: {
        updateNav () {
            const data = /^\/[^/]*/.exec(this.$route.path || '');
            if (data) {
                this.url_path = [data[0]];
            } else {
                this.url_path = [];
            }
        }
    }
};
</script>

<style scoped>
.layout-main {
    min-height: 100vh;
}
.logo {
    height: 32px;
    background: rgba(255, 255, 255, 0.2);
    margin: 16px;
}
</style>

<style>
html {
  font-family:
    'Source Sans Pro',
    -apple-system,
    BlinkMacSystemFont,
    'Segoe UI',
    Roboto,
    'Helvetica Neue',
    Arial,
    sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}
</style>
