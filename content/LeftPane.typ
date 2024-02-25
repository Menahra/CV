#import "utils.typ": spacing

#let LeftPane(
  applicantData,
  photoPath,
  translationData
) = {
  // photo
  align(center,
    box(
      height: 130pt,
      width: 90pt,
      image(photoPath)
    )
  );

  // name and title
  v(spacing(amount: 1));
  align(center,
    text(weight: "bold", size: 20pt, applicantData.name)
  );
  align(center,
    text(size: 16pt, applicantData.jobTitle)
  );
  v(spacing(amount: 3));

  // contact
  align(center,
    text(size: 12pt, weight: "bold", translationData.contactTitle)
  );
  v(spacing(amount: -0.5));
  line(length: 100%);

  let contactGridContent = (
    image(width: 11pt, "../assets/location.svg"),
    text(size: 12pt, applicantData.location),
    image(width: 11pt, "../assets/phone.svg"),
    text(size: 12pt, applicantData.phone),
    image(width: 11pt, "../assets/email.svg"),
    text(size: 12pt, applicantData.email)
  );

  if ("github" in applicantData) {
    contactGridContent.push(
      image(width: 11pt, "../assets/github.svg"),
    );
    contactGridContent.push(
      text(size: 12pt, applicantData.github)
    );
  }

  grid(
    columns: 2,
    column-gutter: spacing(amount: 1),
    row-gutter: spacing(amount: 1.5),
    ..contactGridContent
  );
  v(spacing(amount: 3));

  // core skills
  align(center,
    text(size: 12pt, weight: "bold", translationData.skillTitle)
  );
  v(spacing(amount: -0.5));
  line(length: 100%);
  v(spacing(amount: 1))

  let skillListContent = ();
  for skill in applicantData.skills {
    skillListContent.push(
      text(size: 12pt, skill)
    );
  }
  list(
    ..skillListContent
  )
};