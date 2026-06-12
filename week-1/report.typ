#import "../../../../template_dm.typ": *

#show: project.with(
  nom_dm: "Week 1",
  nom: "Baptiste Girardin,\n Antonin Granados,\n Colin Marmond,\n Edouard Vivares",
  nom_ue: "CSC_4IG07_TP",
  date: "08/06/2026"
)

#set heading(numbering: "1.a.")

= Visualize the evolution across *time*
#figure(
  caption: "Visualization ideas for the evolution over time",
  table(
    columns: 3,
    align: center,
    stroke: none,
    image("schemas/viz-1.1.1.jpeg"),
    image("schemas/viz-1.2.jpeg"),
    image("schemas/viz-1.3.jpeg"),
    [(a)], [(b)], [(c)],
  )
)

==
We accumulate the number of occurrences of each name for each year, creating a cumulative curve. This allows us to observe the appearance and disappearance of names, as well as their popularity over time. We could either use the raw count, which would also show population evolution, or the proportion. The main issue is that names with very small proportions may create a lot of clutter and make the visualization difficult to read.

==
We use a cursor to select a year, or a range of years, and display the ordered count for each name as a bar plot. We can set a maximum number of displayed names to avoid very long graphs with many small values.

==
Similarly to the first idea, we show the appearance and disappearance of names over time using a proportional display. We can display the proportion in each "cell", which may improve readability compared to the first idea. To make the plot easier to read, we should aggregate several years together, for example every 5 or 10 years. Ordering the names by their appearance and / or disappearance time would create a sort of diagonal pattern, making the evolution easier to understand. However, we would need to hide names with very small values to avoid making the plot too difficult to read.

#pagebreak()
= Visualize the evolution across *location*
#figure(
  caption: "Visualization ideas for the geographic evolution",
  table(
    columns: 3,
    align: center,
    stroke: none,
    image("schemas/viz-2.1.jpeg"),
    image("schemas/viz-2.2.jpeg"),
    image("schemas/viz-2.3.jpeg"),
    [(a)], [(b)], [(c)],
  )
)

For most of the next plots, we will use a slider to select a year or a range of years.

==
In each departement, we display the most given name over the selected range. We also color each departement according to the proportion of this name, or according to its proportion relative to the second most given name, to provide information about its popularity. The issue is that this visualization does not provide information about the popularity of the second name, or of the other names.

==
The second idea is to draw the map using only names. More popular names would be displayed with a larger font, while less popular names would appear smaller. We might need to slightly deform the map, or avoid strictly respecting the borders, to fit a reasonable number of names in each departement, for example 3 or 4 names.

==
We can also use a slider to select a name. The slider could order names by overall popularity, and we could color them from red for the most popular names to blue for the least popular ones. On the map, we could represent the proportion of the selected name in each departement by changing the saturation of each departement. For example, a name that is popular overall would be red, but in a departement where it is rarely given, the color would tend toward white.

#pagebreak()
= Visualize the evolution across *gender*
#figure(
  caption: "Visualization ideas for the evolution across gender",
  table(
    columns: 3,
    align: center,
    stroke: none,
    image("schemas/viz-3.1.jpeg"),
    image("schemas/viz-3.2.jpeg"),
    image("schemas/viz-3.3.jpeg"),
    [(a)], [(b)], [(c)],
  )
)

==
We use a graph similar to a demographic comparison over time, so we do not rely on the cursor described before. We can either compare pairs of two different names, or use the same name to compare how often it is given to each gender and how this evolves over time.

==
Another idea is to use a bar chart where one gender is shown below the zero line and the other above it. This makes it possible to see how often each name is given to each gender over a fixed time frame. To make the graph easier to read, we would need to select only the most given names, and maybe use a log scale to make names with lower popularity visible, especially names that are frequently given to one gender but much less to the other.

==
The last idea is to make a bar chart where both genders alternate. We display the most popular male and female names next to each other, then the second most popular ones, and so on. We also need to display only the most given names to keep the graph reasonably short.
