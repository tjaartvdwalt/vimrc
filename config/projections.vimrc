let g:projectionist_heuristics = {
      \   "vue.config.js": {
      \     "src/components/*.vue": {
      \       "type": "component",
      \       "alternate": "tests/unit/{basename}.ts"
      \      },
      \     "src/views/*.vue": {
      \       "type": "view"
      \     },
      \     "src/store/modules/*.ts": {
      \       "type": "store"
      \     },
      \     "src/types/*.ts": {
      \       "type": "type"
      \     },
      \     "src/router/*.ts": {
      \       "type": "route"
      \     },
      \     "tests/unit/*.ts": {
      \       "type": "unit"
      \     },
      \     "tests/e2e/specs/*.js": {
      \       "type": "integration"
      \     }
      \   },
      \   "sfdx-project.json": {
      \     "force-app/main/default/lwc/*.html": {
      \       "type": "html",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.js"
      \     },
      \     "force-app/main/default/lwc/*.js": {
      \       "type": "js",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     },
      \     "force-app/main/default/lwc/*.css": {
      \       "type": "css",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     },
      \     "force-app/main/default/classes/*.cls": {
      \       "type": "apex",
      \       "alternate": "force-app/main/default/classes/Test_{}.cls"
      \     },
      \     "force-app/main/default/classes/Test_*.cls": {
      \       "type": "apexTest",
      \       "alternate": "force-app/main/default/classes/{}.cls"
      \     },
      \     "force-app/main/default/triggers/*.trigger": {
      \       "type": "trigger"
      \     }
      \   }
      \}


