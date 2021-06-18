const {
  changeToDarkMode,
  changeToLightMode,
  changeBulletsToSquares,
  changeFontSizeAndColour
} = require("/home/script.js")
const indexFile = require("./indexFile.js")

document.body.innerHTML = indexFile()

describe('body should - ', () => {
  let body = document.body
  test("start without the darkmode class", () => {
      expect(body.classList.length).toEqual(0)
  })
  test('have darkmode class pressing darkmode button', () => {
      changeToDarkMode()
      expect(body.classList.length).toEqual(1)
      expect(body.classList[0]).toEqual("darkmode")
  })
  test("have no darkmode class after pressing lightmode button", () => {
      changeToLightMode()
      expect(body.classList.length).toEqual(0)
  })
})

describe("ul should - ", () => {
  changeBulletsToSquares()
  test("have squares instead of bullets", () => {
      let ul =  document.querySelector("ul")
      expect(ul.style.listStyleType).toEqual("square")
  })
})

describe("font should - ", () => {
  let body = document.body
  changeFontSizeAndColour()
  test("be 28px", () => {
      expect(body.style.fontSize).toEqual("28px")
  })
  test("be Arial", () => {
      expect(body.style.fontFamily).toEqual("Arial")
  })
})
