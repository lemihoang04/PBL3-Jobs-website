<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./Assets/CSS/global_cvframe.css?v=2" />
    <link rel="stylesheet" href="./Assets/CSS/cvframe.css?v=3" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Clash Display Variable:wght@600&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Epilogue:wght@400;500;600;700&display=swap"
    />
  </head>
  <body>
    <div class="landing-page-submit-applicat-parent">
      <main class="landing-page-submit-applicat">
        <section class="base"></section>
        <img class="icon" loading="lazy" alt="" src="./public/icon.svg" />

        <form method="POST" action="uploadcv" class="input-fields-wrapper" enctype="multipart/form-data">
        <input type="hidden" name="jobtitle" value="${detail.jobTitle}">
          <div class="input-fields">
            <div class="role">
              <img
                class="company-logo-icon"
                loading="lazy"
                alt=""
                src="${detail.picLink}"
              />

              <div class="job-title-wrapper">
                <div class="job-title">
                  <h3 class="social-media-assistant">${detail.jobTitle}</h3>
                  <div class="frame">
                    <div class="paris-france">${detail.city}</div>
                    <div class="frame-inner"></div>
                    <div class="full-time1">${detail.workWay}</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="divider"></div>
            <div class="submit-your-application">
              <h3 class="submit-your-application1">Submit your application</h3>
              <div class="the-following-is">
                The following is required and will only be shared with Nomad
              </div>
            </div>
            <div class="textfield">
              <div class="label6">Company</div>
              <div class="input">
                <input
                  name="company"
                  class="this-is-placeholder"
                  value="${detail.company}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield">
              <div class="label6">Full name</div>
              <div class="input">
                <input
                  class="this-is-placeholder"          
					value="${acc.name}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield1">
              <div class="label7">Email address</div>
              <div class="input1">
                <input
                  class="this-is-placeholder"
                  value="${acc.email}"
                  type="text"
                  readonly
                />
              </div>
            </div>
            <div class="textfield2">
              <div class="label8">Phone number</div>
              <div class="input2">
                <input
                  class="this-is-placeholder"
                  value="${acc.mobile}"
                  type="text"
                  readonly
                />
              </div>
            </div> 
            <div class="textfield6">
              <div class="label12">Additional information</div>
              <div class="content">
                <textarea
                  name="description"	
                  class="form"
                  placeholder="Add a cover letter or anything else you want to share"
                  rows="{8}"
                  cols="{29}"
                >
                </textarea>
                <div class="helper-text">
                  <div class="maximum-500-characters">
                    Maximum 500 characters
                  </div>
                </div>
              </div>
            </div>
            <div class="textfield7">
              <div class="attach-your-resume-wrapper">
                <div class="attach-your-resume">Attach your resume</div>
              </div>
              <div class="form-attach">
                <div class="icon-wrapper">
                  <img class="icon8" alt="" src="./public/icon-7.svg" />
                </div>
                <input name="file" type="file" class="attach-resumecv">Attach Resume/CV</input>
              </div>
            </div>
            <div class="divider3"></div>
            <button type="submit" class="button2">
              <b class="caption">Submit Application</b>
            </button>
            <div class="by-sending-the-container">
              <span
                >By sending the request you can confirm that you accept our
              </span>
              <span class="terms-of-service">Terms of Service</span>
              <span> and </span>
              <span class="privacy-policy">Privacy Policy</span>
            </div>
          </div>
        </form>
      </main>
    </div>

    <script src="./Assets/JavaScript/CVconfig.js?v=1"></script>
  </body>
</html>
