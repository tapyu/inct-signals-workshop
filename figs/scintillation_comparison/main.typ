#import "@preview/cetz:0.2.2": canvas, plot, draw, decorations
#set page(width: auto, height: auto, margin: .5cm)
#set text(font: "Times New Roman")
#show math.equation: set text(font: "Times New Roman")

#let scintillation = csv("scintillation.csv")
#let scintillation = scintillation.flatten().map(float).chunks(2)

#let nonscintillation = csv("nonscintillation.csv")
#let nonscintillation = nonscintillation.flatten().map(float).chunks(2)

#canvas({
  plot.plot(
    size: (8,8),
    x-min: 0,
    x-max: 25,
    x-tick-step: 5,
    x-label: [Time (s)],

    y-min: 0,
    y-max: 50,
    y-tick-step: 10,
    y-label: [C/N#sub[0] (dB-Hz)],

    legend: "legend.inner-south-east",
    x-grid: true,
    y-grid: true,
    {
      plot.add(
        scintillation,
        label: "PRN 7",
        style: (stroke: red)
      )
      plot.add(
        nonscintillation,
        label: "PRN 8",
        style: (stroke: blue)
      )
      plot.add(
        ((0, 28), (25, 28)),
        style: (stroke: (paint: green, dash: "dashed")),
        label: "Tracking threshold"
      )
      plot.add(
        ((0, 33), (25, 33)),
        style: (stroke: (paint: black, dash: "dashed")),
        label: "Acquisition threshold"
      )
    }
  )
})