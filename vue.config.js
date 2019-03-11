const path = require("path")

module.exports = {
    baseUrl : "/resources/assets/",
    configureWebpack: {
        entry: path.resolve(__dirname + '/resources/assets/src/main.js'),
        resolve: {
            alias: {
                "@" : path.resolve(__dirname + '/resources/assets/src'),
                "@asset" : path.resolve(__dirname + '/resources/assets')
            }
        }
    }
}