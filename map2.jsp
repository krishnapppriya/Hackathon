<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title></title>
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.34.0/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.34.0/mapbox-gl.css' rel='stylesheet' />
	<script src='https://api.mapbox.com/mapbox.js/v3.0.1/mapbox.js'></script>
  <link href='https://api.mapbox.com/mapbox.js/v3.0.1/mapbox.css' rel='stylesheet' />
    <style>
        body { margin:0; padding:0; }
        #map { position:absolute; top:0; bottom:0; width:100%; z-index:-1}
		#example{z-index:1}
		a{
			color: #444;
			text-decoration: none;
			font-size: 20px;
		}
		
		a:hover{
			text-decoration: underline;
		}
		
		button.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 15%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
}
button.accordion.active, button.accordion:hover {
    background-color: #ddd;
}

div.panel {
    padding: 0 18px;
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: 0.6s ease-in-out;
    opacity: 0;
}

div.panel.show {
    opacity: 1;
    max-height: 500px;  
}
		
		.button1 {
    display: block;
    width: 115px;
    height: 50px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}



    </style>
</head>
<body>

<style>
    .mapboxgl-popup {
        max-width: 400px;
        font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
    }
</style>
<div id='map'></div>
 <div class="col-sm-2 sidenav" id='example'>
   
	<span style="font-size:30px;cursor:pointer" class="accordion" onclick="openNav()">&#9776;</span><br>
	<button class="accordion">Data</button>
		<div class="panel">
		<a href="entry.jsp" target="frame3">Entry</a><br>
		<a href="retrieval.jsp" target="frame3">Retrieval</a><br>
	</div>
    
    <a href="forum.jsp"><button class="accordion">Forum</button></a><br>

    
 
	 <a href="documentation.jsp"><button class="accordion">Documentation</button></a><br><br>
	
	<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        this.nextElementSibling.classList.toggle("show");
  }
}
</script>
<script>


mapboxgl.accessToken = 'pk.eyJ1IjoiYWFydGhlaiIsImEiOiJjajB0M2E3M3owNWN4MnFvNWJ3M2dvbG9qIn0.g3JKqvYnrjdUIE9hf-TuMA';
var map = new mapboxgl.Map({
    container: 'map',
    zoom: 3.8,
    center: [78.9150899566626, 20.25956997955441],
    style: 'mapbox://styles/mapbox/satellite-v9',
    hash: false
});

map.on('load', function () {

    // Add a layer showing the places.
    map.addLayer({
        "id": "places",
        "type": "symbol",
        "source": {
            "type": "geojson",
            "data": {
                "type": "FeatureCollection",
                "features": [{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Ennore</strong><p><a href=\"http://www.mtpleasantdc.com/makeitmtpleasant\" target=\"_blank\" title=\"Opens in a new window\">Make it Mount Pleasant</a> is a handmade and vintage market and afternoon of live entertainment and kids activities. 12:00-6:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [80.3203, 13.2146]
                    }
                },
				{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Ennore</strong><p><a href=\"http://www.mtpleasantdc.com/makeitmtpleasant\" target=\"_blank\" title=\"Opens in a new window\">Make it Mount Pleasant</a> is a handmade and vintage market and afternoon of live entertainment and kids activities. 12:00-6:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [80.3203, 13.2146]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Tuticorin</strong><p>Head to Lounge 201 (201 Massachusetts Avenue NE) Sunday for a <a href=\"http://madmens5finale.eventbrite.com/\" target=\"_blank\" title=\"Opens in a new window\">Mad Men Season Five Finale Watch Party</a>, complete with 60s costume contest, Mad Men trivia, and retro food and drink. 8:00-11:00 p.m. $10 general admission, $20 admission and two hour open bar.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [78.1348,8.7642]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Pondicherry</strong><p>EatBar (2761 Washington Boulevard Arlington VA) is throwing a <a href=\"http://tallulaeatbar.ticketleap.com/2012beachblanket/\" target=\"_blank\" title=\"Opens in a new window\">Big Backyard Beach Bash and Wine Fest</a> on Saturday, serving up conch fritters, fish tacos and crab sliders, and Red Apron hot dogs. 12:00-3:00 p.m. $25.grill hot dogs.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [79.8145, 11.9139]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Kakinada</strong><p>The <a href=\"http://ballstonarts-craftsmarket.blogspot.com/\" target=\"_blank\" title=\"Opens in a new window\">Ballston Arts & Crafts Market</a> sets up shop next to the Ballston metro this Saturday for the first of five dates this summer. Nearly 35 artists and crafters will be on hand selling their wares. 10:00-4:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [82.2475, 16.9891]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Vishakhapatnam</strong><p>Feeling dandy? Get fancy, grab your bike, and take part in this year's <a href=\"http://dandiesandquaintrelles.com/2012/04/the-seersucker-social-is-set-for-june-9th-save-the-date-and-start-planning-your-look/\" target=\"_blank\" title=\"Opens in a new window\">Seersucker Social</a> bike ride from Dandies and Quaintrelles. After the ride enjoy a lawn party at Hillwood with jazz, cocktails, paper hat-making, and more. 11:00-7:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [83.2185, 17.6868]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Paradip</strong><p>The annual <a href=\"http://www.capitalpride.org/parade\" target=\"_blank\" title=\"Opens in a new window\">Capital Pride Parade</a> makes its way through Dupont this Saturday. 4:30 p.m. Free.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [86.6114, 20.3166]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Mumbai</strong><p>Jazz-influenced hip hop artist <a href=\"http://www.muhsinah.com\" target=\"_blank\" title=\"Opens in a new window\">Muhsinah</a> plays the <a href=\"http://www.blackcatdc.com\">Black Cat</a> (1811 14th Street NW) tonight with <a href=\"http://www.exitclov.com\" target=\"_blank\" title=\"Opens in a new window\">Exit Clov</a> and <a href=\"http://godsilla.bandcamp.com\" target=\"_blank\" title=\"Opens in a new window\">Gods’illa</a>. 9:00 p.m. $12.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [72.8777, 19.0760]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Worli</strong><p>The Arlington Players' production of Stephen Sondheim's  <a href=\"http://www.thearlingtonplayers.org/drupal-6.20/node/4661/show\" target=\"_blank\" title=\"Opens in a new window\"><em>A Little Night Music</em></a> comes to the Kogod Cradle at The Mead Center for American Theater (1101 6th Street SW) this weekend and next. 8:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [72.8290, 18.9872]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Malvan</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [73.4711, 16.0631]
                    }
					
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Mangalore</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [74.8560, 12.9141]
                    }
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Kochi</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [76.2673, 9.9312]
                    }
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Kavaratti</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [72.6358, 10.5593]
                    }
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Sandheads</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [88.25, 10.8833]
                    }
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Hooghly</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [88.2461, 22.8963]
                    }
					 }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Port Blair</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [92.7265, 11.6234]
                    }
					
					
					
					  }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Goa</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [74.1240, 15.2993]
                    }

                },
				{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Hazira</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [72.6773, 21.1755]
                    }

                },
				{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Veraval</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [70.3629, 20.9159]
                    }

                },
				{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Vadinar</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [69.7198, 22.3976]
                    }

                }]
            }
        },
        "layout": {
            "icon-image": "{icon}-15",
            "icon-allow-overlap": true
        }
    });
});


// When a click event occurs near a place, open a popup at the location of
// the feature, with description HTML from its properties.
map.on('click', function (e) {
    var features = map.queryRenderedFeatures(e.point, { layers: ['places'] });

    if (!features.length) {
        return;
    }

    var feature = features[0];

    // Populate the popup and set its coordinates
    // based on the feature found.
    var popup = new mapboxgl.Popup()
        .setLngLat(feature.geometry.coordinates)
        .setHTML(feature.properties.description)
        .addTo(map);
});

// Use the same approach as above to indicate that the symbols are clickable
// by changing the cursor style to 'pointer'.
map.on('mousemove', function (e) {
    var features = map.queryRenderedFeatures(e.point, { layers: ['places'] });
    map.getCanvas().style.cursor = (features.length) ? 'pointer' : '';
});
</script>

</body>
</html>