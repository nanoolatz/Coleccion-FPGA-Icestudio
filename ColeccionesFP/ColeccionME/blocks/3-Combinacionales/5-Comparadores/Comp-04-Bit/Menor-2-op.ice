{
  "version": "1.2",
  "package": {
    "name": "Menor-2-op-4Bits",
    "version": "0.1",
    "description": "Comparador menor que, de 2 operandos de 4 bits",
    "author": "Juan Gonzalez-Gomez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2248.9%22%20height=%2224.208%22%20viewBox=%220%200%2012.93815%206.4051131%22%3E%3Cg%20word-spacing=%220%22%20letter-spacing=%220%22%20font-weight=%22400%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.206%22%3E%3Ctext%20font-size=%22132.193%22%20y=%228.385%22%20x=%227.279%22%20style=%22line-height:125%25%22%20stroke-width=%22.078%22%20transform=%22translate(-2.603%20-1.644)%22%3E%3Ctspan%20font-weight=%22700%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%228.385%22%20x=%227.279%22%20font-size=%2211.289%22%20stroke-width=%22.283%22%3E&lt;%3C/tspan%3E%3C/text%3E%3Ctext%20font-size=%2267.97%22%20y=%226.811%22%20x=%222.3%22%20style=%22line-height:125%25%22%20stroke-width=%22.04%22%20transform=%22translate(-2.603%20-1.644)%22%3E%3Ctspan%20font-weight=%22700%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%226.811%22%20x=%222.3%22%20font-size=%227.056%22%20stroke-width=%22.146%22%3Ea%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "aa2457f3-8a73-4dfa-8f0d-968f0f144c8a",
          "type": "basic.input",
          "data": {
            "name": "a",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": 0
              },
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
          "id": "a698061f-7a00-47d3-9340-93d67eb6267e",
          "type": "basic.input",
          "data": {
            "name": "b",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": 0
              },
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
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "b",
                  "range": "[3:0]",
                  "size": 4
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
            "block": "a698061f-7a00-47d3-9340-93d67eb6267e",
            "port": "out"
          },
          "target": {
            "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
            "port": "b"
          },
          "size": 4
        },
        {
          "source": {
            "block": "aa2457f3-8a73-4dfa-8f0d-968f0f144c8a",
            "port": "out"
          },
          "target": {
            "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
            "port": "a"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}