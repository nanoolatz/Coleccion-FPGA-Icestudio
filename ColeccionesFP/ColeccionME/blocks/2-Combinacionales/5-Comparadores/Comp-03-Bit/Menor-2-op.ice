{
  "version": "1.2",
  "package": {
    "name": "Menor-2-op-3Bits",
    "version": "0.1",
    "description": "Comparador menor que, de 2 operandos de 3 bits",
    "author": "Juan Gonzalez-Gomez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2248.9%22%20height=%2224.208%22%20viewBox=%220%200%2012.93815%206.4051131%22%3E%3Cg%20word-spacing=%220%22%20letter-spacing=%220%22%20font-weight=%22400%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.206%22%3E%3Ctext%20font-size=%22132.193%22%20y=%228.385%22%20x=%227.279%22%20style=%22line-height:125%25%22%20stroke-width=%22.078%22%20transform=%22translate(-2.603%20-1.644)%22%3E%3Ctspan%20font-weight=%22700%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%228.385%22%20x=%227.279%22%20font-size=%2211.289%22%20stroke-width=%22.283%22%3E&lt;%3C/tspan%3E%3C/text%3E%3Ctext%20font-size=%2267.97%22%20y=%226.811%22%20x=%222.3%22%20style=%22line-height:125%25%22%20stroke-width=%22.04%22%20transform=%22translate(-2.603%20-1.644)%22%3E%3Ctspan%20font-weight=%22700%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%226.811%22%20x=%222.3%22%20font-size=%227.056%22%20stroke-width=%22.146%22%3Ea%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "0867b1bc-1cc5-4707-8ddb-40d0318d237c",
          "type": "basic.input",
          "data": {
            "name": "a",
            "range": "[2:0]",
            "pins": [
              {
                "index": "2",
                "name": "",
                "value": 0
              },
              {
                "index": "1",
                "name": "",
                "value": 0
              },
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 104
          }
        },
        {
          "id": "0344dacc-8583-456b-b377-8cb4ab97cf94",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 616,
            "y": 160
          }
        },
        {
          "id": "02895c3c-06cb-49d7-9e3f-012ee448d996",
          "type": "basic.input",
          "data": {
            "name": "b",
            "range": "[2:0]",
            "pins": [
              {
                "index": "2",
                "name": "",
                "value": 0
              },
              {
                "index": "1",
                "name": "",
                "value": 0
              },
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 200
          }
        },
        {
          "id": "9c811723-c900-4ceb-9989-036b071ee3fe",
          "type": "basic.code",
          "data": {
            "code": "assign eq = (a < b);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "b",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "eq"
                }
              ]
            }
          },
          "position": {
            "x": 344,
            "y": 160
          },
          "size": {
            "width": 224,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
            "port": "eq"
          },
          "target": {
            "block": "0344dacc-8583-456b-b377-8cb4ab97cf94",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "02895c3c-06cb-49d7-9e3f-012ee448d996",
            "port": "out"
          },
          "target": {
            "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
            "port": "b"
          },
          "size": 3
        },
        {
          "source": {
            "block": "0867b1bc-1cc5-4707-8ddb-40d0318d237c",
            "port": "out"
          },
          "target": {
            "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
            "port": "a"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {}
}