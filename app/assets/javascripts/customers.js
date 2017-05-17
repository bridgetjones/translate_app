// ### CODE ###
// $(document).ready(function(){
//   chat.init();
//   snackbar.init();
//
//   //Snackbar test
//
//   setTimeout(function(){
//     snackbar.add({
//       text: 'Hallo Welt 3',
//       autoclose: false,
//       options: [
//         {
//           name: 'Retry',
//           callback: function(){
//             snackbar.add({
//               text: 'Ok, i retry it! o.o'
//             });
//           }
//         },
//         {name: 'OK'}
//       ]
//     });
//   }, 500);
//
// });
//

// ### PLUGINS ###
var chat = {
  wrap: null,
  overlay: null,
  init: function(){
    chat.wrap = $('.ChatWrapper');
    chat.overlay = $('.ChatCloseOverlay');
    chat.wrap.find('li').on('click', chat.open);
    $('body').on('click', chat.checkClose);
  },
  open: function(){
    chat.wrap.addClass('Open');
    chat.overlay.addClass('Open');
  },
  close: function(){
    chat.wrap.removeClass('Open');
    chat.overlay.removeClass('Open');
  },
  checkClose: function(event){
    if(! $(event.target).parents('.ChatWrapper').length){
      chat.close();
    }
  }
}
// var snackbar = {
//   bar: $('<div class="SnackbarWrapper"/>'),
//   snacks: [],
//   blocked: false,
//   init: function(){
//     snackbar.bar.appendTo($('body'));
//
//     //load all 1000ms one snack if available
//     setInterval(function(){
//       if(snackbar.snacks.length && snackbar.blocked === false){
//         snackbar.blocked = true;
//
//         //create it
//         var snack = $.extend({
//           text: '',
//           autoclose: 2700,
//           options: []
//         }, snackbar.snacks.splice(0, 1)[0]);
//         var	html 	= '<div class="Snack"><div class="SnackInner">';
//         html	+= '<div class="SnackText">'+snack.text+'</div>';
//         html	+= '</div></div>';
//         $snack = $(html);
//
//         if(snack.options.length){
//           var $options = $('<div class="SnackOptions"/>');
//           snack.options.forEach(function(option){
//             var $btn = $('<button class="SnackOption">'+option.name+'</button>');
//             $btn.data('snackOption', option);
//             $btn.appendTo($options);
//           });
//           $options.appendTo($snack.find('.SnackInner'));
//         }
//
//         $snack.appendTo(snackbar.bar);
//         $snack.on('click', function(event){
//           $optionParent = $(event.target).closest('.SnackOption');
//           if($optionParent.length && typeof $optionParent.data('snackOption').callback === 'function'){
//             $optionParent.data('snackOption').callback();
//           }
//           snackbar.close($snack);
//         });
//
//         //show it
//         setTimeout(function(){
//           $snack.css('transform', 'translateY(-100%)');
//           $snack.find('.SnackInner').css('opacity', 1);
//         }, 10);
//
//         //auto-hide it
//         if(snack.autoclose){
//           snack.autoclose = (snack.autoclose < 1000) ? 2700 : snack.autoclose;
//           setTimeout(snackbar.close, snack.autoclose, $snack);
//         }
//       }
//     }, 1000);
//   },
//   add: function(snack){
//     snackbar.snacks.push(snack);
//   },
//   close: function($snack){
//     //hide it
//     $snack.css('transform', 'translateY(0)');
//
//     //remove it
//     setTimeout(function(){
//       $snack.remove();
//       snackbar.blocked = false;
//     }, 400);
//   }
// }
