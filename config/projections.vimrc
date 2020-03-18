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
      \       "type": "source",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     },
      \     "force-app/main/default/lwc/*.css": {
      \       "type": "style",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     }
      \   }
      \}


