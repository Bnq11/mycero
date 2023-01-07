// Arwa
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class mailer {
  String Device = '';
  String Location = '';
  String Time = '';

// -----------------------------------------------
  Future getUserPasswords(String recipient) async {
    var data = await FirebaseFirestore.instance
        .collection('users')
        .doc(recipient)
        .collection('History')
        .get();

    for (var queryDocumentSnapshot in data.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      Device = data['Device'];
      Location = data['Location'];
      Time = data['Time'];
    }
    print('Device ' + Device);
    print('Location ' + Location);
    print('Time ' + Time);
  }
// -----------------------------------------------

  main(String recipient) async {
    // Note that using a username and password for gmail only works if
    // you have two-factor authentication enabled and created an App password.
    // Search for "gmail app password 2fa"
    // The alternative is to use oauth.
    String username = 'cero.KSU@gmail.com';
    String password = 'vpvvfdhcmcdjsbkc';

    await getUserPasswords(recipient);
    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'cero @ KSU')
      ..recipients.add('arwa.nbk@gmail.com')
      ..subject = 'Security alert for your cero account'
      // ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<html xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" lang=\"en\"><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]--><!--[if !mso]><!--><!--<![endif]--><style>.emPreviewText { display:none !important } *{box-sizing:border-box}body{margin:0;padding:0}a[x-apple-data-detectors]{color:inherit!important;text-decoration:inherit!important}#MessageViewBody a{color:inherit;text-decoration:none}p{line-height:inherit}.desktop_hide,.desktop_hide table{mso-hide:all;display:none;max-height:0;overflow:hidden}@media (max-width:620px){.row-content{width:100%!important}.mobile_hide{display:none}.stack .column{width:100%;display:block}.mobile_hide{min-height:0;max-height:0;max-width:0;overflow:hidden;font-size:0}.desktop_hide,.desktop_hide table{display:table!important;max-height:none!important}} </style><link href=\"chrome-extension://nffaoalbilbmmfgbnbgppjihopabppdk/inject.css\" type=\"text/css\" rel=\"stylesheet\"></head><body style=\"background-color:#fff;margin:0;padding:0;-webkit-text-size-adjust:none;text-size-adjust:none\" class=\"vsc-initialized\"><span class=\"emPreviewText\" style=\"display:none; font-size:0px; line-height:0px; max-height:0px; max-width:0px; opacity:0; overflow:hidden; visibility:hidden; mso-hide:all;\">a</span><table class=\"nl-container\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;background-color:#fff\"><tbody><tr><td><table class=\"row row-1\" align=\"center\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0\"><tbody><tr><td><table class=\"row-content stack\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;color:#000;width:600px\" width=\"600\"><tbody><tr><td class=\"column column-1\" width=\"100%\" style=\"mso-table-lspace:0;mso-table-rspace:0;font-weight:400;text-align:left;padding-left:10px;padding-right:10px;vertical-align:top;padding-top:30px;padding-bottom:30px;border-top:0;border-right:0;border-bottom:0;border-left:0\"><table class=\"image_block block-1\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0\"><tbody><tr><td class=\"pad\" style=\"width:100%;padding-right:0;padding-left:0\"><div class=\"alignment\" align=\"center\" style=\"line-height:10px\">" +
          "<img src=\"https://d15k2d11r6t6rl.cloudfront.net/public/users/Integrators/0db9f180-d222-4b2b-9371-cf9393bf4764/091b5d2f-7bc8-45ca-8ba7-40d02e46da63/cero.png\" style=\"display:block;height:auto;border:0;width:145px;max-width:100%\" width=\"145\"></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table class=\"row row-2\" align=\"center\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0\"><tbody><tr><td><table class=\"row-content stack\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;color:#000;width:600px\" width=\"600\"><tbody><tr><td class=\"column column-1\" width=\"100%\" style=\"mso-table-lspace:0;mso-table-rspace:0;font-weight:400;text-align:left;vertical-align:top;padding-top:10px;padding-bottom:5px;border-top:0;border-right:0;border-bottom:0;border-left:0\"><table class=\"text_block block-1\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;word-break:break-word\"><tbody><tr><td class=\"pad\"><div style=\"font-family:Arial,sans-serif\"><div class=\"\" style=\"font-size:12px;font-family:Arial,'Helvetica Neue',Helvetica,sans-serif;mso-line-height-alt:18px;color:#333;line-height:1.5\"><p style=\"margin:0;font-size:12px;mso-line-height-alt:18px\">" +
          "<span style=\"font-size:12px;\">Hi <strong>${recipient}</strong>.</span></p><p style=\"margin:0;font-size:12px;text-align:left;mso-line-height-alt:18px\">&nbsp;</p><p style=\"margin:0;font-size:12px;text-align:left;mso-line-height-alt:18px\">" +
          "<span style=\"font-size:12px;\">Your account was signed&nbsp;in to on&nbsp;a new device. Here are the details:</span></p></div></div></td></tr></tbody></table><table class=\"text_block block-2\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;word-break:break-word\"><tbody><tr><td class=\"pad\"><div style=\"font-family:Arial,sans-serif\"><div class=\"\" style=\"font-size:12px;mso-line-height-alt:18px;color:#333;line-height:1.5;font-family:Arial,'Helvetica Neue',Helvetica,sans-serif\"><ul style=\"line-height:1.5;mso-line-height-alt:18px;font-size:12px\"><li><span style=\"font-size:12px;\">" +
          "<strong><span style=\"\">Device: ${Device}</span></strong></span></li><li><span style=\"font-size:12px;\">" +
          "<strong><span style=\"\">Date: ${Time}</span></strong></span></li><li><span style=\"font-size:12px;\">" +
          "<strong><span style=\"\">Address: ${Location} </span></strong></span></li></ul></div> </div></td></tr></tbody></table><table class=\"text_block block-3\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;word-break:break-word\"><tbody><tr><td class=\"pad\"><div style=\"font-family:Arial,sans-serif\"><div class=\"\" style=\"font-size:12px;font-family:Arial,'Helvetica Neue',Helvetica,sans-serif;mso-line-height-alt:18px;color:#333;line-height:1.5\">" +
          "<p style=\"margin:0;mso-line-height-alt:18px\"> If this wasn't you, we strongly recommend you emailing us&nbsp;ASAP.&nbsp;</p><p style=\"margin:0;mso-line-height-alt:18px\">&nbsp;</p>" +
          "<p style=\"margin:0;mso-line-height-alt:18px\"> We also recommend that you verify the security of your email account, and as a reminder, never use the same password for multiple online accounts. For more password safety tips,&nbsp;<a href=\"https://www.avast.com/c-strong-password-ideas\" rel=\"noopener\" target=\"_blank\" style=\"text-decoration: underline; color: #00acff;\">click here</a>.</p><p style=\"margin:0;mso-line-height-alt:18px\">&nbsp;</p><p style=\"margin:0;mso-line-height-alt:18px\">Your security is our top priority.</p></div></div> </td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table class=\"row row-3\" align=\"center\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0\"><tbody><tr><td><table class=\"row-content stack\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;color:#000;width:600px\" width=\"600\"><tbody><tr><td class=\"column column-1\" width=\"100%\" style=\"mso-table-lspace:0;mso-table-rspace:0;font-weight:400;text-align:left;vertical-align:top;padding-top:25px;padding-bottom:25px;border-top:0;border-right:0;border-bottom:0;border-left:0\"><table class=\"text_block block-1\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace:0;mso-table-rspace:0;word-break:break-word\"><tbody><tr><td class=\"pad\"><div style=\"font-family:sans-serif\"><div class=\"\" style=\"font-size:12px;mso-line-height-alt:14.399999999999999px;color:#b2b5b6;line-height:1.2;font-family:Helvetica Neue,Helvetica,Arial,sans-serif\"><p style=\"margin:0;text-align:center;mso-line-height-alt:14.399999999999999px\">&nbsp;</p><p style=\"margin:0;text-align:center;mso-line-height-alt:14.399999999999999px\">&nbsp;</p><p style=\"margin:0;text-align:center;mso-line-height-alt:14.399999999999999px\">" +
          "<strong>Our mailing address:</strong></p><p style=\"margin:0;text-align:center;mso-line-height-alt:14.399999999999999px\">cero.KSU@gmail.com</p><p style=\"margin:0;text-align:center;mso-line-height-alt:14.399999999999999px\"><a href=\"http://[globalunsubscribe]/\" target=\"_blank\" rel=\"noopener\" style=\"color: #b2b5b6;\"></a></p></div></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><!-- End --></body></html> ";
    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    // DONE

    //
    // Create a smtp client that will persist the connection
    var connection = PersistentConnection(smtpServer);

    // Send the first message
    await connection.send(message);

    // close the connection
    await connection.close();
  }
}
