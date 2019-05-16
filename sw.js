///self.addEventListener('install',function(event){
	console.log('[Service Worker is installed]...',event);
	event.waitUntil(caches.open('static')
		.then(function(cache){
		  cache.addAll([
		  	
		  	'index.html',
		  	'Eventos.jsp',
            'fetch.js',
            
            'promise.js',
            
		  	]);
		})
	)
});
self.addEventListener('active',function(event){
  console.log('[Service Worker is Activated...]',event);
  return self.clients.claim();
});
//comm
self.addEventListener('fetch',function(event) {
  event.respondWith(
  	caches.match(event.request)
  	.then(function(response){
        if(response)
        	return response;
        else{
        	return fetch(event.request)
                     .then(function(res){
                       return caches.open('Dynamic')
                         .then(function(cache){
                         	cache.put(event.request.url,res.clone());
                         	  return res;
               })
             })
              .catch(function(err){

              });
        	
         }
  	})
  );
});