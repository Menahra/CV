#import "../CV.typ": CV;

#show: document => CV(
  "./test/applicant.json",
  "../test/DefaultApplicantPhoto.svg",
  "en_US"
);
