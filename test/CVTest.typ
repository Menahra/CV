#import "../CV.typ": CV;

#show: document => CV(
  "./test/applicant.json",
  "../test/ApplicantPhoto.JPG",
  "en_US"
);
