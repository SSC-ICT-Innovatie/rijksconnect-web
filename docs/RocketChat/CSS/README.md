# Dark theme for Rocket Chat
## intro
Persoonlijk vind ik een donkere achtergrond veel rustgevender voor de ogen dan de standaard witte achtergrond.  
Dus vandaar dat ik deze Dark Theme heb gemaakt.  
Het thema is gebaseerd op het donkere thema van het chat platform [Discord](https://discord.gg)

Click [here](https://files.zylon.moe/u/20031923354242077221526.png) to see a preview

## Hoe gebruik je het?
Er zijn meerdere wegen naar Rome maar ik zal er twee beschrijven.  
De meest makkelijke manier is via een plugin, ik gebruik zelf Stylish. [Chrome](https://chrome.google.com/webstore/detail/stylish/fjnbnpbmkenffdnngjfgmeleoegfcffe//Aqui)/[Firefox](https://addons.mozilla.org/en-US/firefox/addon/stylish/)  
Als je geen plugin kan installeren omdat je op een managed laptop zit is er nog een work-around.

### Stylish  
Stylish overschrijft al bestaande CSS, hierdoor hoeven we alleen de veranderingen door te geven.  
Gebruikt daarom de `RocketChat-DarkTheme-minimal.css` voor stylish.
Als je de plugin opent kun je op "Write new style" klikken.  
![Step 1](https://files.zylon.moe/u/20031922310556777130545.png)

Dit opent het volgende scherm:  
![Step 2](https://files.zylon.moe/u/20031922344306877143281.png)  
1. Plak hier de inhoude van `RocketChat-DarkTheme-minimal.css`
2. Klik op "Specify" en vul dan het volgende in:  
   ![Step 2.5](https://files.zylon.moe/u/20031922364985477153375.png)
3. Verzin een leuke naam en sla de custom theme op door op "Save" te drukken.

Dat is het!  
Zolang stylish aan staat zou de custom CSS voor de dark theme moeten werken.

### Work-around
Als je geen plugin kan installeren omdat je op een managed laptop of DWR client zit is er nog een work-around.  
Deze work-around werkt alleen zolang je de rijksconnect pagina niet sluit, en werkt niet in Internet Explorer of Edge _(non-chromium)_.

1. Klik met de rechter muisknop op een lege plek in de rijksconnect pagina, en klik op "Inspect"  
   ![Step 1](https://files.zylon.moe/u/20031922491719677163662.png)
2. In het nieuwe venster, druk op `CTRL` + `F` om te kunnen zoeken.  
   Typ dan `theme.css` in de nieuwe zoekbalk.
   Die zou moeten leiden tot een regel die er zo uit ziet:
   ![Step 2](https://files.zylon.moe/u/20031922581262177176888.png)
3. Dubbel klik de `/theme.css?...` om de hele link te selecteren.
   ![Step 3](https://files.zylon.moe/u/20031923023350277183113.png)
4. Vervang deze vervolgens met de link naar de CSS op deze github:  
   `https://raw.githubusercontent.com/SSC-ICT-Innovatie/rijksconnect-web/master/docs/RocketChat/CSS/RocketChat-DarkTheme.css`
   ![Step 4](https://files.zylon.moe/u/20031923060121577196233.png)
5. Druk op enter.

Voila! Als het goed is gebruikt de site nu de CSS voor de dark theme, en zal dit blijven werken totdat de pagina word afgesloten.
