var mymap=L.map("leaflet-map",{center:[37.871758,-122.260929],zoom:7});L.tileLayer("https://api.mapbox.com/styles/v1/{id}/ck24z3cvl3w731cnxddhxret7/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",{attribution:'&copy; <a href="http://openstreetmap.org">OpenStreetMap</a>, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a> | \xa9 <a href="http://mapbox.com">Mapbox</a>',maxZoom:18,id:"shalandy",accessToken:"pk.eyJ1Ijoic2hhbGFuZHkiLCJhIjoiY2syNHoxaHhsMDE2YzNlbjNpNTBueml3diJ9.zrIOoG7uEkskPY2icMP01w"}).addTo(mymap);var marker1=L.marker([37.5383,-121.953]).addTo(mymap);marker1.bindPopup("<b>Shalandy Zhang \ud83c\udde8\ud83c\uddf3</b><br>About: CS Student @UC Berkeley<br>Contact: shalandy@berkeley.edu").openPopup();