local DefaultItems = {
    general = {
        {
            name = 'phone', 
            description = 'Kommunikáló Eszköz',
            price = 250, 
        },
        {
            name = 'radio', 
            description = 'Kommunikáló Eszköz',
            price = 500, 
        },
        {
            name = 'notepad', 
            description = 'Ha Feledékeny vagy ajánlott',
            price = 50, 
        },



        {
            name = 'fishingrod', 
            description = 'Halászati eszköz',
            price = 100, 
        },
        {
            name = 'fishbait', 
            description = 'Halászati eledel a halaknak',
            price = 30, 
        },
        {
            name = 'turtlebait', 
            description = 'Teknös Fogására kivánló csali',
            price = 45, 
        },



        {
            name = 'hamburger', 
            description = 'Étel',
            price = 35, 
        },
        {
            name = 'cola', 
            description = 'Ital',
            price = 30, 
        },



        {
            name = 'hotdog', 
            description = 'Étel',
            price = 30, 
        },
        {
            name = 'fanta', 
            description = 'Ital',
            price = 25, 
        },



        {
            name = 'szendvics', 
            description = 'Étel',
            price = 20, 
        },
        {
            name = 'water', 
            description = 'Ital',
            price = 15, 
        },
    },

    iratok = {
        {
            name = 'szemelyi', 
            description = ' Személyi Igazolvány amely minden állampolgárnak kell.',
            price = 100, 
        },
        {
           name = 'jogsi', 
           description = 'Jogosítávny amely jármüvet vezető embernek kell.',
           price = 100, 
        },
   },
};


local SharedConfig = {
    shops = {
        {
            name = 'Bolt', 
            position = vector3(-553.4, -185.9, 38.2), 
            items = DefaultItems.iratok,

            blip = {
                enabled = false, 
                id = 52, 
                color = 39, 
            },
        },
        {
            name = 'Bolt', 
            position = vector3(373.9, 326.1, 103.6), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(-48.430225372314,-1757.0729980469,29.421005249023), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(292.5, -1270.7, 29.5), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(161.9, 6640.7, 31.6), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1136.3656005859,-981.67352294922,46.415794372559), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(26.07543182373,-1346.3084716797,29.497022628784), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(-1223.5568847656,-906.85559082031,12.326357841492), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1163.2282714844,-323.58627319336,69.205154418945), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(-1223.5568847656,-906.85559082031,12.326357841492), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(2678.8, 3280.8, 55.2), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1961.8, 3740.7, 32.3), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(-1820.9, 792.5, 138.1), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(-3242.4, 1002.7, 12.8), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1729.7, 6414, 35), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1698.3, 4924.4, 42.1), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------
        {
            name = 'Bolt', 
            position = vector3(1166, 2708.8, 38.2), 
            items = DefaultItems.general,

            blip = {
                enabled = true, 
                id = 52, 
                color = 39, 
            },
        },
        --------------------------------------------------------

        --{
           -- name = 'Bolt', 
           -- position = vector3(-200.62, -981.46, 31.08), 
          --  items = DefaultItems.pd,

          --  groups = { police = true },
          --  owners = { 'society_police', 'society_ambulance' }, 

          --  blip = {
              --  enabled = true, 
              --  id = 94, 
              --  color = 59, 
          --  },
       -- },
    }, 
};

Citizen.CreateThread(function()while Config==nil do Wait(250)end;for a,b in pairs(SharedConfig)do Config[a]=b end end)