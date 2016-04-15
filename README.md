# 即时聊天 -- 基于开源项目

# 前端

## React + Immutable.js + Redux

- React
#### 单向数据流, 虚拟DOM

- Immutable.js
#### 在React中有一种被称为PureRenderMixin的Mixin模式，它可以用来对新的属性和之前的属性进行对比，如果是数据没有发生变化，就不再重新渲染。在内部实现上，它也是基于shouldComponentUpdate的方法。遗憾的是，PureRenderMixin并不能很好的进行对象的比较。它只会检查对象引用的相等性（===），也就是说，对于有相同数据的不同对象而言它会返回false。
#### 所以当对象的内容没有发生变化时，或者有一个新的对象进来时，我们倾向于保持对象引用的不变。这个工作正是我们需要借助Facebook的Immutable.js来完成的。不变性意味着数据一旦创建就不能被改变，这使得应用开发更为简单，避免保护性拷贝（defensive copy），并且使得在简单的应用 逻辑中实现变化检查机制等

- Redux
#### state树形结构

# 后端

## Nodejs

- CoffeeScript 极限编程，新模式

# 部署

## Gulp + Webpack

- 将css直接合并为一个文件，在head中通过link标签引入，提高网页渲染速度
- 将js打包为不同的入口文件，并自动合并依赖关系。将跨页面的公用代码抽离为独立文件，益于浏览器缓存

# 环境

## MongoDB

## Redis 作为缓存和消息通讯中间件



## LICENSE

[MIT](./LICENSE)
