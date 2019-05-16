//var enableNotificationsButtons = document.querySelectorAll('.enable-notification')
if ('serviceWorker' in navigator) {
	navigator.serviceWorker.register('sw.js').then(function(){
       console.log('serviceWorer is registered');
	});
}
/*window.addEventListener('beforeinstallprompt',function(event){
	event.prompt();
  // Wait for the user to respond to the prompt
  event.userChoice
    .then((choiceResult) => {
      if(choiceResult.outcome=='accepted') {
        console.log('User accepted the A2HS prompt');
      }
      else{
        console.log('User dismissed the A2HS prompt');
      }
      
    });
});
 */
/*function displayConfirmNotification(){
new Notification('Successfully subscribed');
}

function askForNotificationPermission(){
	Notification.requestPermission(function(result){
		consle.log('User Choice', result);
		if (result !== 'granted'){
			console.log('no notification permission granted!');
		}else{
		displayConfirmNotification();	
		}
	});
}

if ('Notification' in window) {
	for(var i = 0; i < enableNotificationsButtons.length; i++){
		enableNotificationsButtons[i].style.display= 'inline-block';
		enableNotificationsButtons[i].addEventListener('click');
	}
}*/