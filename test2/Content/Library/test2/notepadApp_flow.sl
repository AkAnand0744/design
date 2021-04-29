namespace: test2
flow:
  name: notepadApp_flow
  workflow:
  - notepadApp:
      do:
        test2.notepadApp: []
      publish:
      - return_result
      - error_message
      navigate:
      - SUCCESS: SUCCESS
      - WARNING: SUCCESS
      - FAILURE: on_failure
  outputs:
  - return_result
  - error_message
  results:
  - SUCCESS
  - FAILURE
