<!--
 * @Author: Leo
 * @Date: 2023-11-16 21:47:39
 * @LastEditTime: 2023-11-23 16:34:18
 * @FilePath: \myProg\proxy_frontend\pages\WebSSH.vue
 * @Description: Leo的一些没用的代码
-->
<template>
    <!-- eslint-disable -->
    <div>
      <div>
			<a-input v-model="host" placeholder="请输入主机名" style="width: 240px"/>
			<a-input v-model="user_name" placeholder="请输入用户名" style="width: 240px"/>
        	<a-input-password v-model="password" placeholder="请输入密码" style="width: 240px"/>
			<a-button type="primary" @click="initSocket">连接</a-button>
		</div>

    <div style="margin-top: 20px; width: 800px" id="xterm" class="xterm"></div>
    </div>    
</template>

<script>
/* eslint-disable */
import 'xterm/css/xterm.css'
import { Terminal } from 'xterm'
import { FitAddon } from 'xterm-addon-fit'
import { AttachAddon } from 'xterm-addon-attach'

export default {
  name: 'Xterm',
  props: {
    socketURI: {
      type: String,
      default: 'ws://127.0.0.1:8000/webssh/'
    }
  },
  data () {
    return {
      term: null,
      terminalSocket: null,
      host: null,
      user_name: null,
      password: null
    }
  },
  
  // 如果不进行判断，有时打开页面没有进行连接，再跳转到其他页面就会出错 
  beforeDestroy () {
    if (this.socket) {
      this.socket.close()
    }
    if (this.term) {
      this.term.dispose()
    }
  },
  methods: {
    initTerm () {
      const term = new Terminal({
        fontSize: 14,
        cursorBlink: true
      })
      const attachAddon = new AttachAddon(this.socket)
      const fitAddon = new FitAddon()
      term.loadAddon(attachAddon)
      term.loadAddon(fitAddon)
      term.open(document.getElementById('xterm'))
      fitAddon.fit()
      term.focus()
      this.term = term
    },
    // 初始化 WebSocket 连接，并设置连接成功、关闭和错误时的回调函数。
    initSocket () {
      this.socketURI = 'ws://127.0.0.1:8000/webssh/'+this.user_name+'/'+this.password+'/'+this.host
      console.log(this.socketURI)
      this.socket = new WebSocket(this.socketURI)
      this.socketOnClose()
      this.socketOnOpen()
      this.socketOnError()
    },
    socketOnOpen () {
      this.socket.onopen = () => {
        // 链接成功后
        this.initTerm()
      }
    },
    socketOnClose () {
      this.socket.onclose = () => {
        console.log('close socket')
      }
    },
    socketOnError () {
      this.socket.onerror = () => {
        console.log('socket 链接失败')
      }
    }
  }
}
</script>
