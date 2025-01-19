Vue.createApp({
    data() {
        return {
        	selectedGame : "",
            games : {
            	Minecraft : {
            		criador : "Mojang",
            		peso : "1gb"
            	},
            	Roblox : {
            		criador : "Roblox Inc.",
            		peso : "1.5gb"
            	},
            	Fortnite : {
            		criador : "Epic Games",
            		peso : "5gb"
            	},
            }
        }
    }
}).mount("#app");