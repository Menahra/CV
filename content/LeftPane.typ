#import "utils.typ": spacing

#let LeftPane(
  applicantData,
  photoPath
) = {
  align(center,
    box(
      height: 130pt,
      width: 90pt,
      image(photoPath)
    )
  );
  v(spacing(amount: 1));
  align(center,
    text(weight: "bold", size: 20pt, applicantData.name)
  );
  align(center,
    text(size: 16pt, applicantData.jobTitle)
  );
  v(spacing(amount: 3));
  align(center,
    text(size: 12pt, weight: "bold", "Contact Details")
  )
};