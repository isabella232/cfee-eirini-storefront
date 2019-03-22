IDENTIFICATION DIVISION.
PROGRAM-ID.  DEMO.
PROCEDURE DIVISION.
DisplayPrompt.
  DISPLAY '['
          '{ "name": "Product A", "brand": "brand", "price": 67 },'
          '{ "name": "Product B", "brand": "brand", "price": "130" },'
          '{ "name": "Product C", "brand": "brand", "price": "210" },'
          '{ "name": "Product D", "brand": "brand", "price": "45" },'
          '{ "name": "Product E", "brand": "brand", "price": "20" },'
          '{ "name": "Product F", "brand": "brand", "price": "170" }'
          ']'
  STOP RUN.
