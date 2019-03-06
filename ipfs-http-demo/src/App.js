import React, { Component } from 'react';
import './App.css';

var ipfsClient = require('ipfs-http-client')

// // connect to ipfs daemon API server
// var ipfs = ipfsClient('localhost', '5001', { protocol: 'http' }) // leaving out the arguments will default to these values

// // or connect with multiaddr
// var ipfs = ipfsClient('/ip4/127.0.0.1/tcp/5001')

// or using options
var ipfs = ipfsClient({ host: 'localhost', port: '5001', protocol: 'http' })

// // or specifying a specific API path
// var ipfs = ipfsClient({ host: '1.1.1.1', port: '80', 'api-path': '/ipfs/api/v0' })


class App extends Component {
  saveTextBlobOnIpfs = (blob) => {
    return new Promise(function(resolve, reject) {
      const descBuffer = Buffer.from(blob, 'utf-8');
      ipfs.add(descBuffer).then((response) => {
        console.log(response)
        resolve(response[0].hash);
      }).catch((err) => {
        console.error(err)
        reject(err);
      })
    })
  }


  render() {
    return (
      <div className="App">
        <h1>我的IPFS网页</h1>
        <input 
          ref = "ipfs"
          style={{width:200, height:50}}/>
        <button
        onClick = {() => {
          console.log("将数据提交的IPFS")
          let content = this.refs.ipfs.value;
          console.log(content);
          this.saveTextBlobOnIpfs(content).then((hash) => {
            console.log("内容的hash：" + hash);
          });


        }}
        style = {{height:50}}>将数据提交的IPFS</button>
      </div>
    );
  }
}

export default App;
