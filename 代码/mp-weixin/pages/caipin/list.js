(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/caipin/list"],{"4cd1":function(e,t,n){"use strict";var a=n("7b4f"),i=n.n(a);i.a},"7b4f":function(e,t,n){},"80f7":function(e,t,n){"use strict";n.d(t,"b",(function(){return i})),n.d(t,"c",(function(){return r})),n.d(t,"a",(function(){return a}));var a={mescrollUni:function(){return Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"aa08"))}},i=function(){var e=this,t=e.$createElement,n=(e._self._c,e.isAuth("caipin","修改")),a=e.isAuth("caipin","删除"),i=e.__map(e.list,(function(t,n){var a=e.__get_orig(t),i=t.caipinPhoto?t.caipinPhoto.split(","):null;return{$orig:a,g0:i}})),r=e.isAuth("caipin","新增");e.$mp.data=Object.assign({},{$root:{m0:n,m1:a,l0:i,m2:r}})},r=[]},a384:function(e,t,n){"use strict";n.r(t);var a=n("cfe2"),i=n.n(a);for(var r in a)"default"!==r&&function(e){n.d(t,e,(function(){return a[e]}))}(r);t["default"]=i.a},cae3:function(e,t,n){"use strict";n.r(t);var a=n("80f7"),i=n("a384");for(var r in i)"default"!==r&&function(e){n.d(t,e,(function(){return i[e]}))}(r);n("4cd1");var o,c=n("f0c5"),s=Object(c["a"])(i["default"],a["b"],a["c"],!1,null,null,null,!1,a["a"],o);t["default"]=s.exports},cfe2:function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var a=i(n("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function r(e,t,n,a,i,r,o){try{var c=e[r](o),s=c.value}catch(u){return void n(u)}c.done?t(s):Promise.resolve(s).then(a,i)}function o(e){return function(){var t=this,n=arguments;return new Promise((function(a,i){var o=e.apply(t,n);function c(e){r(o,a,i,c,s,"next",e)}function s(e){r(o,a,i,c,s,"throw",e)}c(void 0)}))}}var c={data:function(){return{btnColor:["#409eff","#67c23a","#909399","#e6a23c","#f56c6c","#356c6c","#351c6c","#f093a9","#a7c23a","#104eff","#10441f","#a21233","#503319"],queryList:[{queryName:"商品名称"}],sactiveItem:{padding:"0 20rpx",boxShadow:"0 0 0px rgba(0,0,0,.3)",margin:"0 12rpx",borderColor:"#8E2DE2",backgroundColor:"#8E2DE2",color:"rgba(0, 0, 0, 1)",borderRadius:"40rpx",borderWidth:"2rpx",width:"auto",lineHeight:"56rpx",fontSize:"24rpx",borderStyle:"solid"},sitem:{padding:"0 20rpx",boxShadow:"0 0 0px rgba(0,0,0,.3)",margin:"0 12rpx",borderColor:"rgba(215, 215, 215, 1)",backgroundColor:"rgba(247, 247, 247, 1)",color:"#333",borderRadius:"40rpx",borderWidth:"2rpx",width:"auto",lineHeight:"56rpx",fontSize:"24rpx",borderStyle:"solid"},list:[],user:{},mescroll:null,downOption:{auto:!1},upOption:{noMoreSize:5,textNoMore:"~ 没有更多了 ~"},hasNext:!0,searchForm:{},caipinTypesList:[],shangxiaTypesList:[],categoryName:0,CustomBar:"0"}},onShow:function(){var t=this;return o(a.default.mark((function n(){var i,r,o,c,s;return a.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return t.btnColor=t.btnColor.sort((function(){return.5-Math.random()})),i=t,r=e.getStorageSync("nowTable"),n.next=5,i.$api.session(r);case 5:return o=n.sent,i.user=o.data,i.btnColor=i.btnColor.sort((function(){return.5-Math.random()})),n.next=10,t.$api.page("dictionary",{page:1,limit:100,dicCode:"caipin_types"});case 10:return c=n.sent,t.caipinTypesList=c.data.list,n.next=14,t.$api.page("dictionary",{page:1,limit:100,dicCode:"shangxia_types"});case 14:s=n.sent,t.shangxiaTypesList=s.data.list,t.hasNext=!0,t.mescroll&&t.mescroll.resetUpScroll();case 18:case"end":return n.stop()}}),n)})))()},onLoad:function(){this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},methods:{queryChange:function(e){this.searchForm.caipinName=""},categoryClick:function(e){this.categoryName=e,this.mescroll.resetUpScroll()},mescrollInit:function(e){this.mescroll=e},downCallback:function(e){this.hasNext=!0,e.resetUpScroll()},upCallback:function(e){var t=this;return o(a.default.mark((function n(){var i,r;return a.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return i={page:e.num,limit:e.size,caipinDelete:1,shangxiaTypes:1},0!=t.categoryName&&(i.caipinTypes=t.categoryName),n.next=4,t.$api.list("caipin",i);case 4:r=n.sent,1==e.num&&(t.list=[]),t.list=t.list.concat(r.data.list),0==r.data.list.length&&(t.hasNext=!1),e.endSuccess(e.size,t.hasNext);case 9:case"end":return n.stop()}}),n)})))()},onSelectTap:function(t){e.setStorageSync("address",t),e.navigateBack({delta:1})},onDetailTap:function(e){this.$utils.jump("../caipin/detail?id=".concat(e.id))},onUpdateTap:function(e){this.$utils.jump("./add-or-update?id=".concat(e))},onAddTap:function(){this.$utils.jump("./add-or-update")},onDeleteTap:function(t){var n=this;e.showModal({title:"提示",content:"是否确认删除",success:function(){var e=o(a.default.mark((function e(i){return a.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!i.confirm){e.next=5;break}return e.next=3,n.$api.del("caipin",JSON.stringify([t]));case 3:n.hasNext=!0,n.mescroll.resetUpScroll();case 5:case"end":return e.stop()}}),e)})));function i(t){return e.apply(this,arguments)}return i}()})},search:function(){var e=this;return o(a.default.mark((function t(){var n,i;return a.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.mescroll.num=1,n={page:e.mescroll.num,limit:e.mescroll.size,caipinDelete:1,shangxiaTypes:1},e.searchForm.caipinUuidNumber&&(n["caipinUuidNumber"]=e.searchForm.caipinUuidNumber),e.searchForm.caipinName&&(n["caipinName"]=e.searchForm.caipinName),e.searchForm.caipinName&&(n["caipinName"]=e.searchForm.caipinName),t.next=7,e.$api.list("caipin",n);case 7:i=t.sent,1==e.mescroll.num&&(e.list=[]),e.list=e.list.concat(i.data.list),0==i.data.list.length&&(e.hasNext=!1),e.mescroll.endSuccess(e.mescroll.size,e.hasNext);case 12:case"end":return t.stop()}}),t)})))()}}};t.default=c}).call(this,n("543d")["default"])},fbd0:function(e,t,n){"use strict";(function(e){n("48e8");a(n("66fd"));var t=a(n("cae3"));function a(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=n,e(t.default)}).call(this,n("543d")["createPage"])}},[["fbd0","common/runtime","common/vendor"]]]);