import 'package:cyberwares_awareness/models/articles_model.dart';
import 'package:cyberwares_awareness/models/detalis_model.dart';
import 'package:cyberwares_awareness/widgets/article_widget.dart';
import 'package:flutter/material.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({super.key});

  final List<ArticalModel> articalList = const [
    //list of data that appear
    ArticalModel(
        tileView: 'Avoid Malware attacks',
        smallDescription:
            'To prevent malware infections, you should follow these security tips: Exercise caution with emails. Dont click on suspicious links or attachments, and hover over URLs to preview them before clicking',
        image: 'assets/images/svgs/article1.svg'),
    ArticalModel(
        tileView: 'Avoid  Phishing attacks',
        smallDescription:
            'To protect yourself from phishing attacks, you can:  Be careful about opening emails or clicking links from unknown or suspicious senders.',
        image: 'assets/images/svgs/article2.svg'),
    ArticalModel(
        tileView: 'Avoid SQL Injection attacks',
        smallDescription:
            'you should follow these best practices: like the following',
        image: 'assets/images/svgs/article3.svg'),
    ArticalModel(
        tileView: 'Avoid DOS attacks',
        smallDescription:
            'To protect yourself from DOS attacks, you can :  Monitor your network traffic and identify any unusual patterns or spikes.',
        image: 'assets/images/svgs/article4.svg'),
    ArticalModel(
        tileView: 'Avoid cross site scripting',
        image: 'assets/images/svgs/article5.svg',
        smallDescription:
            'A Cross-Site Scripting (XSS) attack occurs when a malicious actor injects malicious scripts into web pages that are viewed by other users.'),
    ArticalModel(
        tileView: 'Avoid Session Hijacking attacks',
        smallDescription:
            'Follow these session hijacking prevention tips to increase your online security :',
        image: 'assets/images/svgs/article6.svg'),
    ArticalModel(
        tileView: 'Avoid credential reuse attacks',
        smallDescription:
            'To prevent credential reuse attacks, organizations should implement the following best practices:',
        image: 'assets/images/svgs/article7.svg'),
    ArticalModel(
        tileView: 'Avoid social engineering attacks',
        smallDescription: 'How can you defend against social engineering?',
        image: 'assets/images/svgs/article8.svg'),
  ];
  final List<DetailsModel> detalisList = const [
    //list of detalis of article page
    DetailsModel(
        title: 'Avoid Malware attack',
        subTitle1: 'To prevent malware infections,',
        subTitle2: 'you should follow these security tips:',
        description:
            'Exercise caution with emails. Do not click on suspicious links or attachments, and hover over URLs to preview them before clicking.Be careful with downloads. Only download software from reputable sources and official websites, and avoid third-party platforms that might disguise malware as legitimate software.Use caution with ads and websites. Do not click on flashing messages, unknown applications, or fake prizes that might install malware onto your device.Use antivirus and anti-spyware software. Scan your computer files regularly and remove any detected malware. Keep your security tools updated.Enable firewall protection. A firewall can block unauthorized access to your network and prevent malware from spreading.Secure your network. Use strong encryption and passwords for your Wi-Fi network, and avoid using public or unsecured networks that might expose your device to malware.Keep software updated. Install the latest patches and updates for your operating system, browser, and applications, as they might fix security vulnerabilities that malware can exploit.Create strong, unique passwords. Use a combination of letters, numbers, and symbols for your passwords, and do not reuse the same password for different accounts or devices. Change your passwords regularly and use a password manager to store them securely.Implement multi-factor authentication (MFA). MFA adds an extra layer of security by requiring a second factor, such as a code or a biometric, to verify your identity when logging in to your accounts or devices.Regularly back up your data. In case of a malware attack, you can restore your data from a backup without losing important information or paying a ransom. Store your backups in a separate location or device, and encrypt them for protection.'),
    DetailsModel(
        title: 'Avoid  Phishing attacks',
        subTitle1: 'To protect yourself from ',
        subTitle2: 'phishing attacks,you can:',
        description:
            'Be careful about opening emails or clicking links from unknown or suspicious senders. ● Check the sender’s email address, the URL of the website, and the spelling and grammar of the message for any signs of forgery. ● Use a strong antivirus software and firewall to protect your devices and network from malware. ● Never share your personal or financial information over the phone, email, or text message. ● Report any suspicious or fraudulent activity to the authorities or the legitimate organization.'),
    DetailsModel(
        title: 'Avoid SQL Injection attacks',
        subTitle1: 'you should follow these best practices:',
        subTitle2: ' like the following',
        description:
            'Filter database inputs: Validate and sanitize user inputs before passing them to the database. Use regular expressions, whitelists, or built-in functions to remove any malicious characters or commands from the inputs.Use parameterized queries: Use prepared statements or stored procedures with bound, typed parameters to execute database queries. This prevents the user inputs from being interpreted as part of the SQL statement.Limit database privileges: Use the principle of least privilege and assign the minimum permissions necessary for the database user or application. This reduces the potential damage if a SQL injection attack succeeds. Update database software: Keep your database server software up to date with the latest security patches and upgrades. This fixes any known vulnerabilities that could be exploited by SQL injection attacks.Monitor database activity: Use logging, auditing, or alerting tools to track and analyze database queries and communications. This helps you detect and respond to any suspicious or anomalous behavior.'),
    DetailsModel(
        title: 'Avoid DOS attacks',
        subTitle1: 'To protect yourself from DOS attacks, ',
        subTitle2: 'you can:',
        description:
            '● Monitor your network traffic and identify any unusual patterns or spikes.● Enroll in a DOS protection service that detects and filters out malicious traffic.● Create a disaster recovery plan to communicate and restore your services in case of an attack.● Secure your devices and network with strong passwords, encryption, and firewalls.● Update your software and firmware regularly to fix any vulnerabilities.● Install and maintain antivirus software'),
    DetailsModel(
      title: 'Avoid cross site scripting',
      description:
          'A Cross-Site Scripting (XSS) attack occurs when a malicious actor injects malicious scripts into web pages that are viewed by other users.These scripts can be injected into input fields, URLs, or other areas where user input is accepted by a web application. When other users view the affected web pages, their browsers unknowingly execute the malicious scripts, allowing the attacker to steal sensitive information, hijack user sessions, or deface websites Here is how a Cross-Site Scripting attack works and the potential damage it can cause Injection of Malicious Scripts: The attacker identifies vulnerable input fields or parameters within a web application, such as search boxes, comment forms, or message boards. They then inject malicious scripts, typically written in JavaScript, into these input fields.Execution of Malicious Scripts: When other users interact with the affected web pages, their browsers interpret and execute the injected malicious scripts within the context of the website. This allows the attacker to carry out various malicious activities, including Stealing sensitive information: The attacker can steal cookies, session tokens, or other authentication credentials stored in the victim browser, allowing them to impersonate the victim and access their accounts Session hijacking: By stealing session tokens or cookies, the attacker can hijack the victim session and perform actions on behalf of the victim, such as making unauthorized transactions or changing account settings.Defacement or redirection: The attacker can modify the appearance of the web page or redirect users to malicious websites, phishing pages, or malware distribution sites Keylogging: The attacker can capture keystrokes entered by the user, allowing them to capture sensitive information such as passwords or credit card numbers Impact on Users and Organizations: The damage caused by Cross-Site Scripting attacks can be significant and varied, including Financial losses: Attackers can steal financial information, conduct fraudulent transactions, or redirect users to phishing pages to steal additional sensitive information Reputation damage: Organizations may suffer reputational damage if their websites are defaced or used to distribute malware or phishing attacks Legal and regulatory consequences: Depending on the nature of the data stolen or the impact of the attack,organizations may face legal liabilities or regulatory fines for failing to protect user data Loss of customer trust: Users may lose trust in an organization ability to protect their sensitive information, leading to a loss of customers and business opportunities.',
      subTitle1: 'To protect yourself from',
      subTitle2: "DOS attacks, do the following",
    ),
    DetailsModel(
        title: 'Avoid Session Hijacking attacks',
        subTitle1: 'Follow these session hijacking ,',
        subTitle2: 'prevention tips to increase your online security:',
        description:
            'Avoid public Wi-Fi Avoid carrying out important transactions like banking, online shopping, or logging into your email or social media accounts on public Wi-Fi. There may be a cybercriminal nearby who is using packet sniffing to try to pick up session cookies and other information. Use a VPN If you do need to use public Wi-Fi, use a Virtual Private Network (VPN) to maximize your safety and keep session hijackers out of your sessions. A VPN masks your IP address and keeps your online activities private by creating a private tunnel through which all your online activity travels. A VPN encrypts the data you send and receive. Be alert to phishing and other online scams Avoid clicking on any link in an email unless you know it is from a legitimate sender.Session hijackers may send you an email with a link to click. The link may install malware on your device or take you to a login page that will log you into a site using a session ID prepared by the attacker. Be aware of site security Reputable banks, email providers, online retailers, and social media sites have safeguards in place to avoid session hijacking. Look out for websites whose URL starts with HTTPS the S stands for secure. Using questionable online shops or other providers that may not have robust security can leave you vulnerable to asession hijacking attack.Use antivirus software Install reputable antivirus software which can easily detect viruses and protect you from any type of malware (including the malware attackers use to perform session hijacking). Keep your systems up to date by setting up automatic updates on all your devices.'),
    DetailsModel(
        title: 'Avoid credential reuse attacks',
        subTitle1: 'To prevent credential reuse attacks,',
        subTitle2:
            'organizations should implement                                                                  the following best practices:',
        description:
            'Multi-factor authentication Multi-factor authentication (MFA) is an authentication method that requires users to provide two or more verification factors to access a system or application. MFA can significantly reduce the risk of credential reuse attacks, as an attacker would need to have access to multiple verification factors to gain access. Strong password policies Organizations should implement strong password policies that require users to create complex passwords that are difficult to guess. Passwords should be a minimum of 12 characters long and contain a mix of uppercase and lowercase letters, numbers, and symbols. Passwords should also be changed regularly, and users should not reuse passwords across different systems and applications.Security awareness training Security awareness training is critical for preventing credential reuse attacks. Users should be trained on how to create strong passwords, how to identify phishing attacks, and how to avoid sharing their credentials with others'),
    DetailsModel(
        title: 'Avoid social engineering attacks',
        subTitle1: 'How can you defend against social engineering?',
        subTitle2: 'you can follow the following:',
        description:
            'It is important for individuals as well as employees to be aware and guard against these common social engineering attacks. Aside from trusting nobody ever, there is a simple rule to defend against social engineering attacks designed to trick individuals like you. Essentially, the golden rule is that if something seems too good to be true, it probably is. So, if you are ever faced with a financial windfall out of the blue, a head hunting request, or a prize from a competition you did not enter, then be aware, inquisitive, and do not be blinded by the benefit.In addition, do not be afraid to challenge others who make unusual requests or appear out of place. If an unknown colleague makes a strange request or you see someone loitering in a restricted area, you can often ask for details or report your suspicions, as appropriate. Just because someone claims to have been sent by an executive from the head office and they are in a hurry to get by you into a building, you can pause to check. Often the cost of verification is far less than letting an imposter into your office!'),
    DetailsModel(
        title: 'Avoid  Phishing attacks',
        subTitle1: 'To protect yourself from phishing attacks,',
        subTitle2: 'you can:',
        description: 'subTitle2'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 151,
      child: ListView.builder(
          //the scroll widget
          scrollDirection: Axis.horizontal,
          itemCount: articalList.length,
          itemBuilder: (context, index) {
            return ArticleWidget(
              a1: articalList[index], //list of data appear in home view
              d1: detalisList[
                  index], //list of data appear in detalis view articles
            );
          }),
    );
  }
}
