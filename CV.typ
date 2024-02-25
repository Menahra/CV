#import "content/utils.typ": accentColor, spacing;
#import "content/LeftPane.typ": LeftPane;
#import "content/RightPane.typ": RightPane;

#let CV(
  jsonFilePath,
  photoPath,
  locale,
) = {
  let applicantData = json(jsonFilePath);
  let translations = json("./translations/" + locale + ".json");

  // remove margins of page
  set page(
    margin: (x: 0pt, y: 0pt)
  )

  grid(
    columns: (30%, 70%),
    rows: 100%,
    gutter: 0pt,
    box(
      width: 100%,
      height: 100%,
      fill: accentColor,
      inset: spacing(amount: 3),
      LeftPane(
        applicantData,
        photoPath,
        translations
      )
    ),
    box(
      width: 100%,
      height: 100%,
      inset: (x: spacing(amount: 3), y: spacing(amount: 4)),
      RightPane(
        applicantData,
        translations
      )
    )
  )
};
