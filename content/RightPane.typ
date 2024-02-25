#import "utils.typ": spacing, accentTextColor;

#let RightPane(
  applicantData,
  translationData
) = {
  // profile
  align(
    center,
    text(16pt, accentTextColor, weight: "bold", translationData.profileTitle)
  );

  v(spacing(amount: -0.5));
  text(12pt, applicantData.profile);
  v(spacing(amount: 1));

  // work history
  align(
    center,
    text(16pt, accentTextColor, weight: "bold", translationData.workHistoryTitle)
  );
  for workPlace in applicantData.workHistory {
    text(11pt, weight: "bold", workPlace.name);
    text(11pt, " (" + workPlace.from + " - " + workPlace.to + ")");
    linebreak();
    let workPlaceContent = ();
    for task in workPlace.tasks {
      workPlaceContent.push(
        text(size: 12pt, task)
      );
    }
    list(
      indent: 1em,
      ..workPlaceContent
    )
    v(spacing(amount: 0.33));
  };

  // education
  align(
    center,
    text(16pt, accentTextColor, weight: "bold", translationData.educationTitle)
  );
  for education in applicantData.education {
    text(11pt, weight: "bold", education.title);
    text(
      11pt,
      " | " +  education.institute + ": " + education.from + " - " + education.to
    );
    v(spacing(amount: 0.33));
  };

  // additional stuff
  align(
    center,
    text(16pt, accentTextColor, weight: "bold", translationData.additionalTitle)
  );
  
};
