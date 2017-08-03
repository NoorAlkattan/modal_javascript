// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function() {
       var delay = 5000;
       var reactionDelay = 5 * 1000;
       var $modal = $(".modal-mask");
       var $modalBtn = $modal.find(".modal-btn");
       var lastActive = null;
       var modalShown = null;
       
       var getNow = performance && performance.now ? function(){ return performance.now() } : function(){ return Date.now();}
   
       var showAFKModal = function showAFKModal() {
           modalShown = getNow();
           $modal.show();
           $modal.focus();
       };
   
       var checkTimeout = function checkTimeout() {
           var now = getNow();
           if(!modalShown){
               if(now - lastActive  > delay){
                   showAFKModal();
               }
           }
           else{
               if (now - modalShown  > delay) {
                   window.location = "/first_pages/new"; 
               }
           }
       };
   
       $modalBtn.on("click", function(e) {
           e.preventDefault();
           $modal.hide();
           modalShown = false;
       });
       
       lastActive = getNow();
       
       $(document).on("click keydown focus mousemove",function(){
           lastActive = getNow();
       })
   
       setInterval(checkTimeout,1000);
   });