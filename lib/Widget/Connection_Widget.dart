import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:moda_gulay_butik/Firebase/Register.dart';
import '../Utils/Colors.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart' as customTabs;

class ConnectionWidget extends StatefulWidget {
  const ConnectionWidget({super.key});

  @override
  State<ConnectionWidget> createState() => _ConnectionWidgetState();
}

class _ConnectionWidgetState extends State<ConnectionWidget> {
  bool isChecked = false;
  bool isTextBoxVisible = false;
  final _tName = TextEditingController();
  final _temail = TextEditingController();
  final _tphone = TextEditingController();
  final _tmesssage = TextEditingController();
  final _tmesssages = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0), // Adjust the value as needed
      child: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BUTİK MAĞAZACILIK TEKSTİL KONFEKSİYON İTHALAT İHRACAT SANAYİ VE TİCARET A.Ş',
                        style: TextStyle(
                            fontSize: 15, fontFamily: 'AvenirB', color: AColors.title),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'Adres:',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'AvenirB',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Osmangazi Osmangazi \nOSMANGAZİ/ BURSA',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'AvenirW',
                                color: AColors.write),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Tel:',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'AvenirB',
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            '0850 000 00 00',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'AvenirW',
                                color: AColors.write),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Mail:',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'AvenirB',
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'info@butik.com',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'AvenirW',
                                color: AColors.write),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Adınız Soyadınız',
                        style: TextStyle(
                            fontFamily: 'AvenirB',
                            fontSize: 17,
                            color: AColors.textconnect),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _tName,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Telefon Numaranız',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AColors.textconnect,
                            fontFamily: 'AvenirB',
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _tphone,
                       inputFormatters: [maskFormatter],
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Email Adresiniz',
                        style: TextStyle(
                            fontFamily: 'AvenirB',
                            fontSize: 17,
                            color: AColors.textconnect),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _temail,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Mesajınızın Konusu',
                        style: TextStyle(
                            fontFamily: 'AvenirB',
                            fontSize: 17,
                            color: AColors.textconnect),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _tmesssages,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Mesajınız',
                        style: TextStyle(
                            fontFamily: 'AvenirB',
                            fontSize: 17,
                            color: AColors.textconnect),
                      ),
                      TextField(
                        controller: _tmesssage,
                        maxLines: null,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.0)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Kişisel Verilerin Korunması',
                        style: TextStyle(
                            fontFamily: 'AvenirB',
                            fontSize: 17,
                            color: AColors.textconnect),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTextBoxVisible = !isTextBoxVisible;
                              });
                            },
                            child: Row(children: [
                              Checkbox(
                                activeColor: AColors.icon,
                                checkColor: AColors.mainpage,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.red),
                                    onPressed: () {
                                      // Show the dialog when the button is pressed

                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Kişisel Verilerin Korunması',
                                              style: TextStyle(
                                                  fontFamily: 'AvenirB',
                                                  color: AColors.icon),
                                            ),
                                            content: Container(
                                              width: double
                                                  .maxFinite, // Make the content take up the full width
                                              child: SingleChildScrollView(
                                                child: Text(
                                                  kvkk,
                                                  style: TextStyle(
                                                      fontFamily: 'AvenirW',
                                                      color: AColors.write),
                                                ),
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Kapat',
                                                  style: TextStyle(
                                                      color: AColors.icon,
                                                      fontFamily: 'AvenirB'),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Kişisel verilerin koruma korunması \nkurallarını okudum ve onaylıyorum.',
                                      style: TextStyle(
                                          color: AColors.icon, fontFamily: 'AvenirB'),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          AuthService().ConnecitonSend(context, email: _temail.text, messages: _tmesssages.text, names: _tName.text, message: _tmesssage.text, phone: _tphone.hashCode, kvkk: true);
                        },
                        style: flatButtonStyle,
                        child:
                        Text('Gönder', style: TextStyle(color: AColors.mainpage)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launchInstagram(context);
                            },
                            child: Container(
                                width: 45.0,
                                height: 45.0,
                                child: Image.asset('assets/image/instagram.png')),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              launchYoutube();
                            },
                            child: Container(
                                width: 60.0,
                                height: 50.0,
                                child: Image.asset('assets/image/youtube.png')),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]))),
    );
  }
}

void launchInstagram(BuildContext context) async {
  final url = 'https://www.instagram.com/';
  try {
    await customTabs.launch(
      url,
      customTabsOption: CustomTabsOption(
        toolbarColor: Theme.of(context).primaryColor,
        showPageTitle: true,
        enableDefaultShare: true,
        enableUrlBarHiding: true,
      ),
    );
  } catch (e) {
    print('Error launching Instagram: $e');
  }
}

void launchYoutube() async {
  final url = 'https://www.youtube.com/';
  final youtubeAppUrl = 'vnd.youtube:$url';

  try {
    await customTabs.launch(
      url,
      customTabsOption: CustomTabsOption(
        // Buraya istediğiniz özel ayarları ekleyebilirsiniz.
      ),
    );
  } catch (e) {
    // customTabs kullanılamıyorsa veya hata oluşursa, tarayıcıda açmayı deneyin
    print('Error launching YouTube: $e');
  }
}

/*
void launchYoutube() async {
  final url = 'https://www.youtube.com/channel/UCDP5eexCh5phF2ibLIPdq2Q';
  final youtubeAppUrl = 'vnd.youtube:$url';

  try {
    if (await canLaunch(youtubeAppUrl)) {
      await launch(youtubeAppUrl);
    } else {
      // Fallback: YouTube uygulaması yoksa tarayıcıda aç
      await launch(url);
    }
  } catch (e) {
    print('Error launching YouTube: $e');
  }
}
*/
var maskFormatter = MaskTextInputFormatter(
    mask: '+90 (5##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: AColors.icon,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
  textStyle:
  const TextStyle(fontFamily: 'AvenirB', fontSize: 20, color: Colors.white),
);

final String kvkk = ('MODA GÜLAY (“modagulay.com”) olarak, web sitemizi ziyaret eden ve üye olarak ya da misafir müşteri olarak alış-veriş yapanlar ile iş başvurusu yapan adaylar, tedarikçiler ve iş ortaklarının(“Kişi Grubu”) gizliliğini koruma konusunda“Kişisel Verilerin Korunması Hakkında Kanun” (“KVK Kanunu”) gereği alınması gereken tedbirleri aldığımızı ve “KVK Kanunu” nun öngördüğü ilkeleri benimseyerek, “modagulay.com” olarak Kişisel verilerinizin güvenliği ile ilgili gerekli tedbirleri aldığımızı belirtmek isteriz. İş bu “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” , kişi gruplarının hangi kişisel verilerinin işlendiği, hangi kategorilerde kişisel verilerinizin işlendiği, Kişisel verilerinizin toplanma yöntemi ve hukuki sebebi, kişisel verilerinizin toplanma amaçları, kişisel verilerinizin saklanma süreleri ile imha süreçleri, kişisel verilerinizin güvenliği için almış olduğumuz teknik ve idari tedbirleri, kişisel verilerinizin aktarım süreçleri, kişisel verileriniz üzerindeki haklarınızı ve bu haklarınızın nasıl kullanılacağı, çerez kullanımı ve yönetimi hakkında detaylı bilgilendirmeyi içermektedir. Gizlilik ve kişisel verilerinizin işlenmesi politikamız hakkındaki sorularınız için bizimle iletişime geçebilirsiniz.'
    'TANIMLAR'
    'Açık Rıza	Belirli bir konuya ilişkin bilgilendirmeye dayanan ve özgür iradeyle açıklanan rıza'
    'Anonim Hale Getirme	Daha öncesinde bir kişiyle ilişkilendirilmiş olan verilerin, başka verilerle eşleştirilerek dahi hiçbir surette kimliği belirli veya belirlenebilir gerçek bir kişiyle ilişkilendirilemeyecek hale getirilmesi'
    'Çalışan Adayı	Şirketimiz bünyesinde çalışmayan ancak çalışmak için başvuruda bulunan gerçek kişileri'
    'Kişisel Veri	Kimliği belirli veya belirlenebilir gerçek kişiye ait her türlü bilgi'
    'Veri Sahibi (İlgili Kişi)	Kişisel verisi işlenen gerçek kişi'
    'Kişisel Verilerin İşlenmesi	Kişisel verilerin tamamen veya kısmen otomatik olan veya herhangi bir veri kayıt sisteminin parçası olmak kaydıyla otomatik olmayan yollarla elde edilmesi, kaydedilmesi, depolanması, muhafaza edilmesi, değiştirilmesi, yeniden düzenlenmesi, açıklanması, aktarılması, devralınması, elde edilebilir hale getirilmesi, sınıflandırılması ya da kullanılmasının engellenmesi gibi veriler üzerinde gerçekleştirilen her türlü işlem'
    'Kanun	6698 Sayılı Kişisel Verilerin Korunması Kanunu'
    'Özel Nitelikli Kişisel Veri	Irk, etnik köken, siyasi düşünce, felsefi inanç, din, mezhep veya diğer inançlar, kılık ve kıyafet, dernek, vakıf ya da sendika üyeliği, sağlık, cinsel hayat, ceza mahkumiyeti ve güvenlik tedbirleriyle ilgili veriler ile biyometrik ve genetik veriler'
    'Politika	Moda Gülay A.Ş Gizlilik ve Kişisel Verilerin İşlenmesi Politikası'
    'Şirket	Moda Gülay A.Ş'
    'Veri İşleyen	Veri sorumlusunun verdiği yetkiye dayanarak onun adına kişisel veri işleyen gerçek ve tüzel kişi'
    'Veri Sorumlusu	Kişisel verilerin işlenme amaçlarını ve vasıtalarını belirleyen, veri kayıt sisteminin kurulmasından ve yönetilmesinden sorumlu olan gerçek veya tüzel kişi'
    'Veri Kayıt Sistemi	Kişisel verilerin belirli kriterlere göre yapılandırılarak işlendiği kayıt sistemi'
    'İş Ortakları	Şirketin ticari faaliyetleri çerçevesinde yapılan işin kapsamına göre oluşturulan sözleşmelerle ortaklıklar kurduğu gerçek ve tüzel kişiler'
    '1-HİZMETLERİMİZİ KULLANIRKEN HANGİ KİŞİSEL VERİLERİNİZİ KULLANDIĞIMIZI BİLDİRMEK İSTİYORUZ'
    '6698 sayılı Kanun uyarınca Kişisel Verileriniz; veri sorumlusu Moda Gülay A.Ş ( “modagulay.com”) tarafından aşağıda kategorize edilmiş verilerinizi “KVK Kanunu” 5. ve 6. maddeleri ile belirtilmiş olan “Kişisel Verilerin İşlenmesi Şartları” na uygun olarak ve iş bu “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” kapsamında belirtilen hukuki sebepler çerçevesinde işlenmektedir.'
    '1.1- KİŞİSEL VERİ KATEGORİZASYONU'
    '1.1.1- ÜYE MÜŞTERİ VERİLERİ'
    'a-Kimlik bilgileri (ad, soyad, doğum tarihi, cinsiyet, T.C. Kimlik No)'
    'b-Lokasyon bilgileri (Yaşadığı şehir, yapılan alışverişin teslimat adresi)'
    'c-İletişim Bilgileri (Cep telefonu, e-posta adresi, adres, posta kodu, sabit telefon)'
    'd- Finansal bilgiler (Vergi dairesi, fatura bilgileri)'
    'e-Müşteri/Üye bilgisi (Üyelik bilgisi, ID numarası, müşteri şifresi)'
    'f-Müşteri üye işlem bilgisi (Satın alınan ürün/ürünler, alışveriş tutarı, alışveriş tarihi, çağrı merkezi görüşme kayıtları, ticari iletişim izni, faydalanılan kampanyalar, kullanılan kuponlar, siparişe ilişkin bilgiler)'
    'g- Risk yönetim bilgisi (IP adresi)'
    'h-Pazarlama bilgisi (çerez kayıtları, hedefleme bilgileri, alışkanlık ve beğenileri gösteren değerlendirmeler)'
    'ı- İşitsel veri (Çağrı merkezi kayıtları)'
    'i- Hukuki işlem ve uyum bilgisi (Verilerin hizmetin başlama ve bitiş zamanı, yararlanılan hizmetin türü, aktarılan veri miktarı, ilgili kişinin elektronik ortamda verdiği ileti izni, onay verdiği üyelik sözleşmesi, kurumsal üyelik sözleşmesi, modagulay.com sitesinden yararlanılmasını sağlayan sair üyelik ve sözleşme kayıtları)'
    'k-Pazarlama bilgisi (ilgili kişinin aydınlatılmış onamına istinaden gönderilen pazarlama amaçlı sms, e-posta mesajları ve çağrı merkezi tarafından yapılan aramalar ile tarafımıza gönderilmiş ve sitede yayımlanması istenilen instagram fotoğrafları)'
    'l-Şikayet bildirimleri bilgisi (fiziki veya elektronik ortamda gönderilmiş olan şikayet formları)'
    '1.1.2- ZİYARETÇİ MÜŞTERİ VERİLERİ'
    'a-Kimlik bilgileri (ad, soyad, doğum tarihi, cinsiyet, T.C. Kimlik no)'
    'b-Lokasyon bilgileri (Yaşadığı şehir, yapılan alışverişin teslimat adresi)'
    'c-İletişim Bilgileri (Cep telefonu, e-posta adresi, adres, posta kodu, sabit telefon)'
    'd- Finansal bilgiler (Vergi dairesi, fatura bilgileri)'
    'e- Risk yönetim bilgisi (IP adresi)'
    'f- Pazarlama bilgisi (çerez kayıtları, hedefleme bilgileri, alışkanlık ve beğenileri gösteren değerlendirmeler)'
    'g- İşitsel veri (Çağrı merkezi kayıtları)'
    'h- Hukuki işlem ve uyum bilgisi (Verilerin hizmetin başlama ve bitiş zamanı, yararlanılan hizmetin türü, aktarılan veri miktarı, ilgili kişinin elektronik ortamda verdiği ileti izni, onay verdiği üyelik sözleşmesi, kurumsal üyelik sözleşmesi, modagulay.com sitesinden yararlanılmasını sağlayan sair üyelik ve sözleşme kayıtları)'
    'ı- Pazarlama bilgisi (ilgili kişinin aydınlatılmış onamına istinaden gönderilen pazarlama amaçlı sms, e-posta mesajları ve çağrı merkezi tarafından yapılan aramalar ile tarafımıza gönderilmiş ve sitede yayımlanması istenilen instagram fotoğrafları)'
    'i- Şikayet bildirimleri bilgisi (fiziki veya elektronik ortamda gönderilmiş olan şikayet formları)'
    '1.1.3- SİPARİŞ EDİLEN ÜRÜNÜN TESLİM EDİLECEĞİ KİŞİ VERİLERİ'
    'a-Kimlik bilgisi (ad, soyad, doğum tarihi, cinsiyet, T.C. Kimlik no)'
    'b-Lokasyon bilgisi (Yaşadığı şehir, ilçe, alışverişin teslim edileceği adres)'
    'c-İletişim bilgisi (Cep telefonu, e-posta adresi, adres, posta kodu, sabit telefon)'
    'd-Finansal bilgiler (Vergi dairesi, fatura bilgileri)'
    '1.1.4- SATICI/TEDARİKÇİ/SATICI ÇALIŞANI/TEDARİKÇİ ÇALIŞANI'
    'a- Kimlik bilgisi (Ad, soyad, T.C. No)'
    'b- İletişim bilgisi (e-posta adresi, cep telefon numarası, KEP adresi, adres)'
    'c- Finansal bilgi ( Hesap No, Vergi dairesi, Vergi No, Vergi levhası, IBAN, Hesap no)'
    'd- Hukuki işlem bilgisi (İmza sirküleri, faaliyet belgesi)'
    'e- Özel nitelikli kişisel veri (imza)'
    'f- Biyometrik veri (fotoğraf)'
    '2-KİŞİSEL VERİLERİNİZİN İŞLENMESİNE İLİŞKİN İLKELER'
    '6698 Sayılı “KVKK Kanunu” çerçevesinde kişisel verilerinizi işlerken aşağıda belirtilmiş olan hukuksal düzenlemelerle belirlenen ilkeler kapsamında işleme faaliyeti yürüttüğümüzü bildirmek isteriz.'
    '2.1- Hukuka ve Dürüstlük Kurallarına Uygun İşleme Faaliyeti'
    'Kişisel verileriniz işlenirken, kanunlarla ve diğer hukuksal düzenlemelerle getirilen ilkelere uygun olarak hareket edilmektedir. Veri sorumlusu olarak kişisel verilerinizi işlememizdeki amaçlarımıza ulaşmak için ilgili kişilerin çıkarları ve makul beklentileri dikkate alınmaktadır. İlgili kişilerin beklemediği ve beklemesinin de gerekmediği sonuçların ortaya çıkmasını önleyici şekilde hareket edilmektedir.'
    '2.2 – Kişisel Verilerin Doğru ve Gerektiğinde Güncel Olmasını Sağlama'
    'Kişisel verileri işlenen ilgili kişilerin verilerinin gerçeğe uygun olarak işlenip işlenmediğinin kontrolü periyodik olarak gerçekleştirilmektedir. Kişisel verilerin doğru ve güncel olması için gerekli tedbirler alınmaktadır. Bu kapsamda kişisel verilerinizin doğru ve güncel olduğunu kontrol edebilmek için gerekli sistemler oluşturulmuştur.'
    '2.3 –Belirli, Açık ve Meşru Amaçlar İçin İşlenmesi'
    'Kişisel verilerinizin işlenmesinde, iş bu politikada belirtilen şekilde hangi kişisel verilerinizin hangi amaçlarla işlendiği ilgili kişilerin rahatlıkla anlayabileceği şekilde sistematik olarak belirtilmiştir.“modagulay.com” olarak kişisel verilerinizi “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” nda belirtilen amaçlar doğrultusunda ve yapmış olduğumuz iş ve sunmuş olduğumuz hizmetleri gerçekleştirmek amacıyla işlemekteyiz.'
    '2.4- İşlendikleri Amaçla Bağlantılı, Sınırlı ve Ölçülü Olma'
    'Kişisel verileriniz, iş bu “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” nda belirtilen amaçlarla bağlantılı olarak, yapmış olduğumuz iş ve sunmuş olduğumuz hizmetleri gerçekleştirebilmemiz için gerekli olanlarla sınırlı olarak işlenmektedir. Mevcutta olmayan veya sonradan gerçekleşmesi beklenen amaçlar için kişisel verileriniz işlenmemektedir. Belirtilen amaçlarımızın gerçekleştirilmesi için gerekli olmayan veya ihtiyaç duyulmayan kişisel verilerinizin işlenmemesi için gerekli tedbirler “modagulay.com” tarafından alınmaktadır.'
    '2.5- İlgili Mevzuatta Öngörülen veya İşlendikleri Amaç İçin Gerekli Olan Süre Kadar Muhafaza Edilme'
    'Veri sorumlusu olarak kişisel verileriniz ilgili kanunlarda öngörülen sürelerle sınırlı olarak işlenmektedir. İlgili kanunlarda herhangi bir süre öngörülmediği hallerde “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” nda belirtilen amaçlara uygun ve işlendikleri amaçlar için gerekli olan sürelerle saklanmaktadır. Kişisel verileriniz kanunda belirtilen sürelerin dolmasıyla veya ilgili mevzuatlarda herhangi bir süre öngörülmediği hallerde, kişisel verilerinizin işlenmesini gerektiren sebeplerin ortadan kalmasıyla “Kişisel Verilerin Saklanması ve İmha Politikası” nda öngörülen usullerle silinmekte, yok edilmekte veya anonimleştirilmektedir.'
    '3-KİŞİSEL VERİLERİNİZİN TOPLANMA YÖNTEMİ VE HUKUKİ SEBEPLER'
    'İlgili kişinin verilerinin işlenmesi için “Açık Rıza” nın alınması gerekmektedir. Ancak açık rızasının alınamadığı hallerde 6698 sayılı “KVKK Kanunu” nda sıralı olarak sayılan sebeplerin varlığı halinde de kişisel verileriniz işlenebilmektedir. “modagulay.com” olarak kişisel veriler öncelikle açık rızanın bulunduğu hallerde işlenmektedir. İlgili kişinin açık rızası olmaması durumunda ise “KVKK Kanunu” 5. maddesinde öngörülen sebeplerle de işlenebilmektedir. “KVKK Kanunu” 5. maddesine göre verileriniz;'
    'a- Kanunlarda açıkça öngörülmesi'
    'b- Fiili imkansızlık nedeniyle rızasını açıklayamayacak durumda bulunan veya rızasını açıklayamayacak durumda bulunan veya rızasına hukuki geçerlilik tanınmayan kişinin kendisinin ya da bir başkasının hayatı veya beden bütünlüğünün korunması için zorunlu olması'
    'c- Bir sözleşmenin kurulması veya ifasıyla doğrudan doğruya ilgili olması kaydıyla, sözleşmenin taraflarına ait kişisel verilerin işlenmesinin gerekli olması'
    'd- Veri sorumlusunun hukuki yükümlülüğünü yerine getirebilmesi için zorunlu olması'
    'e- İlgili kişinin kendisi tarafından alenileştirilmiş olması'
    'f- Bir hakkın tesisi, korunması veya kullanılması için veri işlemenin zorunlu olması'
    'g- İlgili kişinin temel hak ve özgürlüklerine zarar vermemek kaydıyla , veri sorumlusunun meşru menfaatleri için veri işlenmesinin zorunlu olması'
    '3.1-Kişisel Veri Toplama Yöntemi'
    '“modagulay.com” kişisel verilerinizi, şirketimiz tarafından işletilen www.modagulay.com adresli web sitesi, web sitemizde bulunan “üyelik sözleşmesi”, “başvuru formu” nu doldurmanız durumunda, sosyal medya hesapları, web sitesini ziyaret ettiğinizde kullanılan çerez uygulamaları, çağrı merkezi kayıtları, adli veya idari makamlar tarafından gönderilen tebligat ve mektuplar ve benzeri iletişim kanallarıyla elektronik, işitsel veya yazılı yöntemlerle toplanmaktadır.'
    '3.2. Hukuki Sebepler'
    'Kişisel verileriniz “modagulay.com” tarafından internet sitesi, mobil uygulamalar ve fiziki kanallarda icra edilen teknik ve süreçsel yöntemlerle; bu kanalları kullanarak müşterilerimize ticari hizmetlerimizi sunmak ve bu çerçevede ticari faaliyetlerimizi yürütmek için ilgili mevzuat, sözleşme, talep, ticari gelenek ve dürüstlük kurallarına dayalı olarak ortaya çıkan ve icra edilen hukuki sebepler çerçevesinde toplanmaktadır. Bu hukuki sebeple toplanan kişisel verileriniz “KVK Kanunu” nun 5. ve 6. maddelerinde belirtilen kişisel veri işleme şartları ve amaçları kapsamında iş bu “Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” nda belirtilen amaçlarla işlenebilmekte ve aktarılabilmektedir.'
    '4- KİŞİSEL VERİLERİN HANGİ AMAÇLARLA TOPLANDIĞI'
    '“modagulay.com” olarak kişisel verileriniz aşağıda belirtilen amaçlarla ilgili mevzuatlara uygun şekilde işlenmektedir.'
    '4.1- Üye Müşteri Verileri'
    'a- Üyelik işlemlerinin gerçekleştirilmesi'
    'b- “modagulay.com” tarafından üye müşterilerin işlemlerinin gerçekleştirilmesi, sitemizin geliştirilmesi ve gerekli bilgilendirmelerin yapılabilmesi'
    'c- Üye müşteri ile kurulan sözleşmenin ifası amacıyla, ticari ileti onayı, müşterilerin beğenilerinin, tercihlerinin ve ihtiyaçlarının analizi ile müşterilerimize özel kampanya, fırsat ve tanıtımların sağlanması'
    'd- Müşterilerin aydınlatılmış onamları kapsamında yeniden pazarlama, profil analizleri yapılarak müşterilerin ihtiyaçlarına uygun yeni ürünlerin tanıtımı, hizmetlerin gerçekleştirilmesi ve yeni ürünlerin pazarlanması'
    'e- Üye müşterilerin tercihlerini değerlendirerek internet sitesi ve mobil cihazlarda kullanım kolaylığı sağlanması'
    'f- Üye müşterilerin sorunlarının çözümü, şikayetlerinin değerlendirilmesi'
    'g- Satın alma işlemlerinin takibi'
    'h- Muhasebe süreçlerinin yönetimi'
    'ı- Hukuki süreçlerin yönetimi'
    'i- Adli ve İdari makamlardan gelen bilgi taleplerinin karşılanması'
    'j- Kötü amaçlı kullanımın engellenmesi amacıyla, güvenlik sistemlerinin iyileştirilmesi, denetlenmesi'
    'k- İlgili kişi verilerinin doğruluğunun tespiti ve gerektiğinde güncellenmesinin sağlanması'
    '4.2- Misafir Müşteri Verileri'
    'a- Gerek internet sitesi gerekse mobil üzerinden müşteri olarak alışveriş yapılmasının sağlanması'
    'b- “modagulay.com” tarafından misafir müşterilerin işlemlerini gerçekleştirilmesi, sitemizin geliştirilmesi ve gerekli bilgilendirmelerin yapılabilmesi'
    'c- Misafir müşteri ile kurulan sözleşmenin ifası amacıyla, ticari ileti onayı, müşterilerin beğenilerinin, tercihlerinin ve ihtiyaçlarının analizi ile müşterilerimize özel kampanya, fırsat ve tanıtımların sağlanması'
    'd- Misafir müşterilerin aydınlatılmış onamları kapsamında yeniden pazarlama, profil analizleri yapılarak müşterilerin ihtiyaçlarına uygun yeni ürünlerin tanıtımı, hizmetlerin gerçekleştirilmesi ve yeni ürünlerin pazarlanması'
    'e- Misafir müşterilerin tercihlerini değerlendirerek internet sitesi ve mobil cihazlarda kullanım kolaylığı sağlanması'
    'f- Misafir müşterilerin sorunlarının çözümü, şikayetlerinin değerlendirilmesi'
    'g- Satın alma işlemlerinin takibi'
    'h- Muhasebe süreçlerinin yönetimi'
    'ı- Hukuki süreçlerin yönetimi'
    'i- Adli ve idari makamlardan gelen bilgi taleplerinin karşılanması'
    'j- Kötü amaçlı kullanımın engellenmesi amacıyla, güvenlik sistemlerinin iyileştirilmesi, denetlenmesi'
    '4.3- Çevrimiçi Ziyaretçi Verileri'
    'a- Hukuki süreçlerin takibi ve yönetimi'
    'b- Kötü amaçlı kullanımların tespiti ile engellenmesi ve güvenlik sistemlerinin iyileştirilmesi, denetlenmesi'
    'c- Adli ve idari makamlardan gelen bilgi taleplerinin karşılanması'
    'd- Mevzuattan kaynaklanan yükümlülüklerin yerine getirilmesi'
    '4.4- Satın Alınan Ürünün Adına Teslim Edileceği Kişi'
    'a- Mesafeli satış sözleşmesinin ifasının gerçekleştirilmesinin sağlanması'
    'b- Satın alma ve muhasebe işlemlerinin yönetimi'
    'c- Hukuki süreçlerin takibi ve yönetimi'
    'd- Adli ve idari makamlardan gelen bilgi taleplerinin karşılanması'
    'e- Mevzuattan kaynaklanan yükümlülüklerin yerine getirilmesi'
    'f- Kötü amaçlı kullanımın engellenmesi amacıyla, güvenlik sistemlerinin iyileştirilmesi, denetlenmesi'
    '5- KİŞİSEL VERİLERİNİZİN GÜVENLİĞİNİN SAĞLANMASI AMACIYLA ALINAN TEKNİK VE İDARİ TEDBİRLER'
    '“modagulay.com” olarak kişisel verilerinizin güvenliğine, korunmasına ve yetkisiz kişilerin eline geçmemesi için gerekli tüm teknik ve idari tedbirleri almaktayız. Kanunun 12. maddesi uyarınca veri sorumlusu'
    'a- Kişisel verilerin hukuka aykırı olarak işlenmesini önlemek'
    'b- Kişisel verilere hukuka aykırı olarak erişilmesini önlemek'
    'c- Kişisel verilerin muhafazasını sağlamak'
    'amacıyla uygun güvenlik düzeyini temin etmeye yönelik gerekli her türlü teknik ve idari tedbirleri zorundadır. Hükmü yer almaktadır. Buna göre modagulay.com kişisel verilerin korunması ve güvenliğinin sağlanması amacıyla aşağıda belirtilen teknik ve idari tedbirleri almaktadır.'
    '5.1-Teknik Tedbirler'
    'Şirket tarafından, işlediğimiz kişisel verilerin güvenliğinin sağlanması için alınan teknik tedbirler şu şekildedir;'
    '· Düzenli aralıklarla yapılan Sızma (Penetrasyon) testleri ile şirketimizin bilişim sistemlerine yönelik risk, tehdit, zafiyet ve varsa açıklıklar ortaya çıkarılarak gerekli önlemler alınmaktadır.'
    '· Bilgi güvenliği olay yönetimi ile gerçek zamanlı yapılan analizler sonucunda bilişim sistemlerinin sürekliliğini etkileyecek riskler ve tehditler sürekli olarak izlenmektedir.'
    '· Bilişim sistemlerine erişim ve kullanıcıların yetkilendirilmesi, erişim ve yetki matrisi ile kurumsal aktif dizin üzerinden güvenlik politikaları aracılığı ile yapılmaktadır.'
    '· Kurumun bilişim sistemleri teçhizatı, yazılım ve verilerin fiziksel güvenliği için gerekli önlemler alınmaktadır.'
    '· Çevresel tehditlere karşı bilişim sistemleri güvenliğinin sağlanması için, donanımsal (sistem odasına sadece yetkili personelin girişini sağlayan erişim kontrol sistemi, 7/24 çalışan izleme sistemi, yerel alan ağını oluşturan kenar anahtarların fiziksel güvenliğinin sağlanması, yangın söndürme sistemi, iklimlendirme sistemi vb.) ve yazılımsal (güvenlik duvarları, atak önleme sistemleri, ağ erişim kontrolü, zararlı yazılımları engelleyen sistemler vb.) önlemler alınmaktadır.'
    '· Kişisel verilerin hukuka aykırı işlenmesini önlemeye yönelik riskler belirlenmekte, bu risklere uygun teknik tedbirlerin alınması sağlanmakta ve alınan tedbirlere yönelik teknik kontroller yapılmaktadır.'
    '· Kurum içerisinde erişim prosedürleri oluşturularak kişisel verilere erişim ile ilgili raporlama ve analiz çalışmaları yapılmaktadır.'
    '· Kişisel verilerin bulunduğu saklama alanlarına erişimler kayıt altına alınarak uygunsuz erişimler veya erişim denemeleri kontrol altında tutulmaktadır.'
    '•	Şirket tarafından, silinen kişisel verilerin ilgili kullanıcılar için erişilemez ve tekrar kullanılamaz olması için gerekli tedbirleri almaktadır.'
    '· Kişisel verilerin hukuka aykırı olarak başkaları tarafından elde edilmesi halinde bu durumu ilgili kişiye ve Kurula bildirmek için Şirket tarafından buna uygun bir sistem ve altyapı oluşturulmuştur.'
    '· Güvenlik açıkları takip edilerek uygun güvenlik yamaları yüklenmekte ve bilgi sistemleri güncel halde tutulmaktadır.'
    '· Kişisel verilerin işlendiği elektronik ortamlarda güçlü parolalar kullanılmaktadır.'
    '· Kişisel verilerin işlendiği elektronik ortamlarda güvenli kayıt tutma (loglama) sistemleri kullanılmaktadır.'
    '· Kişisel verilerin güvenli olarak saklanmasını sağlayan veri yedekleme programları kullanılmaktadır.'
    '· Elektronik olan veya olmayan ortamlarda saklanan kişisel verilere erişim, erişim prensiplerine göre sınırlandırılmaktadır.'
    '5.2-İdari Tedbirler'
    'modagulay.com tarafından, işlediğimiz kişisel verilerin güvenliğinin sağlanması için alınan idari tedbirler şu şekildedir;'
    '· Çalışanların niteliğinin geliştirilmesine yönelik, kişisel verilerin hukuka aykırı olarak işlenmenin önlenmesi, kişisel verilerin hukuka aykırı olarak erişilmesinin önlenmesi, kişisel verilerin muhafazasının sağlanması, iletişim teknikleri, teknik bilgi beceri, 4857 sayılı İş Kanun ve ilgili diğer mevzuat hakkında eğitimler verilmektedir.'
    '•	Şirket tarafından yürütülen faaliyetlere ilişkin çalışanlara gizlilik sözleşmeleri imzalatılmaktadır.'
    '· Güvenlik politika ve prosedürlerine uymayan çalışanlara yönelik uygulanacak disiplin prosedürü hazırlanmıştır.'
    '•	Kişisel veri işlemeye başlamadan önce Şirket tarafından, ilgili kişileri aydınlatma yükümlülüğü yerine getirilmektedir.'
    '•	Kişisel Veri İşleme Envanteri hazırlanmıştır.'
    '•	Kurum içi periyodik ve rastgele denetimler yapılmaktadır.'
    '· Çalışanlara yönelik düzenli olarak bilgi güvenliği eğitimleri verilmektedir.'
    'Kişisel Verileri Koruma Kurumu tarafından yayınlanan bildiri, tebliğ ve yayınlar hukuk departmanı tarafından takip edilerek, güncel değişiklikler hakkında raporlama yapılmakta, bu raporlamalara uygun tedbirler alınarak, güncellemeler yapılmaktadır.'
    '6- KİŞİSEL VERİLERİNİZİN HANGİ AMAÇLARLA KİMLERE AKTARILDIĞI'
    '“modagulay.com” kişisel verilerinizi kanunda yer alan temel ilkeler ile“KVK Kanunu” nun 8. ve 9. maddelerine ve iş bu“Gizlilik ve Kişisel Verilerin İşlenmesi Politikası” na uygun olarak 3.kişilere aktarmaktadır. Bu kapsamda işlenen üye müşteri, misafir müşteri, satın alınan ürünün adına teslim edilecek 3.kişi bilgileri; hizmetlerimizi sunabilmek, “modagulay.com” a iletmiş olduğunuz taleplerinizi cevaplandırmak, sonuçlandırmak, sizlerle iletişime geçebilmek, talepleriniz doğrultusunda ürün ve hizmetlerimiz konusunda bilgilendirilmeniz, pazarlama, reklam ve ilgi alanlarınız doğrultusunda sizlere kişiselleştirilmiş bir web sitesi ziyareti sunmak amacıyla hizmetlerinden yararlandığımız veya işbirliği içerisinde olduğumuz tedarikçilerimiz ve iş ortaklarımızla ve düzenleyici, denetleyici kurumlar ve kanunen yetkili kılınmış resmi kurumlar ve kişilerle paylaşılabilmekte, “KVK Kanunu” nun öngördüğü şekilde yurtiçine ve yurtdışına aktarılabilmektedir. “modagulay.com” olarak kişisel verilerinizin aktarılması sürecinde “KVK Kanunu” nun 8. ve 9. maddelerine uygun hareket edilmekte ve kişisel verilerinizin korunması için gerekli teknik ve idari tedbirleri almaktayız.'
    '7-KİŞİSEL VERİLERİNİZİN KATEGORİLERİNE GÖRE SAKLANMA SÜRELERİ'
    '“modagulay.com” olarak kişisel verilerinizi kanunlarda öngörülmüş süreler kadar, eğer kanunlarda herhangi bir süre öngörülmemiş ise işlenme amacının gerektirdiği süreler kadar saklanmaktadır. Kişisel verilerinizin süresiz şekilde saklanması kanunen mümkün olmamakla birlikte gereklide değildir.'
    'Kişisel verilerinizin saklanma süreleri dolduğunda “Kişisel Veri Saklama ve İmha Politikası” nda belirtilen yöntemlerle kişisel verileriniz silinmekte, yok edilmekte veya anonimleştirilmektedir.'
    'KİŞİSEL VERİ KAYNAĞI	SÜRE	YASAL DAYANAK'
    'Çağrı merkezi ses kayıtları	3 Yıl	6563 sayılı kanun ve ilgili mevzuat'
    'Üyeliğe ilişkin kayıtlar	10 Yıl	6098 Sayılı Kanun'
    'Muhasebe ve Finansal İşlemlere İlişkin tüm Kayıtlar	10 Yıl	6102 Sayılı Kanun, 213 Sayılı Kanun'
    'Çerezler ve Log Kayıtları	6 Ay – En Fazla 2 Yıl	5651 Sayılı İnternet Kanunu'
    'Ticari Elektronik Mail Onay Kayıtları	Onayın geri alındığı tarihten itibaren 1 Yıl	6563 Sayılı Kanun ve İlgili Mevzuat'
    'Çevrim içi Ziyaretçilere İlişkin Trafik Bilgileri	2 Yıl	5651 Sayılı Kanun'
    'Müşterilere İlişkin Kişisel Veriler	6563 Sayılı Kanun ve ilgili mevzuat çerçevesinde ise 3 yıl, Hukuki ilişki son erdikten sonra 10 Yıl.	6563 Sayılı Kanun, 6102 Sayılı Kanun, 6098 Sayılı Kanun, 213 Sayılı Kanun, 6502 Sayılı Kanun'
    'Tedarikçilere İlişkin Kişisel Veriler	Hukuki ilişki sona erdikten sonra 10 Yıl	6102 Sayılı Kanun, 6098 Sayılı Kanun ve 213 Sayılı Kanun'
    'Kişisel Verileri Koruma Kurulu İşlemleri	10 Yıl	Kişisel Veri Saklama ve İmha Politikası'
    'Şirket İçi İletişim Faaliyetleri	Faaliyetin Sona Ermesinden İtibaren 10 Yıl	Kişisel Veri Saklama ve İmha Politikası'
    'İnsan Kaynakları Süreçleri	Faaliyetin Sona Ermesinden İtibaren 10 Yıl	4857 Sayılı İş Kanunu ve İlgili Mevzuat'
    'Donanım ve Yazılıma Erişim Süreçleri	2 Yıl	Kişisel Veri Saklama ve İmha Politikası'
    'Ziyaretçi ve Toplantı Kullanıcıların Kaydı	Etkinliğin Sona ermesinden İtibaren 2 Yıl	Kişisel Veri Saklama ve İmha Politikası'
    'Kamera Kayıtları	2 Yıl	Kişisel Veri Saklama ve İmha Politikası'
    'İş Kanunu Kapsamında Saklanan Veriler (Örn. Kıdem tazminatı, ihbar tazminatı, kötü niyet tazminatı, eşit davranma ilkesine aykırılık tazminatına konu olabilecek bilgiler, bordro kayıtları, yıllık izin gün sayısı vb.)	İş İlişkisinin sona ermesinden itibaren 5 Yıl	4857 Sayılı İş Kanunu ve İlgili Mevzuat'
    'İş Kanunu Kapsamında Saklanan Özlük Dosyasına İlişkin Veriler	İş İlişkisinin sona ermesinden itibaren 10 Yıl	4857 Sayılı İş Kanunu ve İlgili Mevzuat / 6098 Sayılı Türk Borçlar Kanunu'
    'İş Sağlığı ve Güvenliği Mevzuatı Kapsamında Toplanan Veriler (Örn: İşe giriş sağlık testleri, sağlık raporları, İSG Eğitimleri, İş Sağlığı ve Güvenliği faaliyetlerine ilişkin kayıtlar vb.)	İş İlişkisinin sona ermesinden itibaren 15 Yıl	6331 Sayılı İş Sağlığı ve Güvenliği Kanunu, İş Sağlığı ve Güvenliği Hizmetleri Yönetmeliği'
    'SGK Mevzuatı kapsamında tutulan veriler (Örn: İşe giriş bildirgeleri, pirim/hizmet belgeleri vb.)	İş İlişkisinin sona ermesinden itibaren 10 Yıl	5510 Sayılı Sosyal Sigortalar ve Genel Sağlık Sigortası Kanunu ve İlgili Mevzuat'
    'İş Kanunu Uyarınca: Çalışan ile ilgili Mahkeme/icra bilgi taleplerinin cevaplanması	İş İlişkisinin sona ermesinden itibaren 10 Yıl	4857 Sayılı İş Kanunu ve İlgili Mevzuat'
    'Çalışan Erişim Kısıtlamaları – Active Directory İşlemleri	İş İlişkisinin sona ermesinden itibaren 10 Yıl	4857 Sayılı İş Kanunu ve İlgili Mevzuat'
    'Şirket Ortakları ve Yönetim Kurulu Üyelerine Ait Bilgiler (Örn: Huzur hakkı ve Kar payı ödemeleri vb.)	10 Yıl	6102 Sayılı Türk Ticaret Kanunu'
    'Şirket Ortakları ve Yönetim Kurulu Üyelerine ait Bilgiler (Pay defterinde yer alan kişisel veriler)	Pay Defterinin Saklanma Zorunluluğu Sebebiyle Süresiz	6102 Sayılı Türk Ticaret Kanunu'
    'Çalışan Avans Ödemesi	10 Yıl	6102 Sayılı Türk Ticaret Kanunu'
    'İş Başvurusu/Staj Başvurusu/ Başvuru Kabul Edilmediği Takdirde Aday Başvurularına İlişkin Veriler (Örn: CV, Özgeçmiş, Başvuru Formu vb.)	1 Yıl	Sektörel teamüller geçerli.'
    'Çalışanlara Yönelik Kurumsal İletişim Faaliyetleri Uyarınca İşlenen Veriler (Örn: Katılımcı Listesi vb.)	İş İlişkisinin sona ermesinden itibaren 10 Yıl	Sektörel Teamül'
    'Çalışan Memnuniyet Anketlerine İlişkin Veriler	Anketin doldurulduğu yılın sona ermesine müteakiben 1 Yıl	Sektörel Teamül'
    'Şirket Faaliyetleri Uyarınca, Saklanması Gereken Ticari Defterler, Ticari Defterlerde Yer Alan Kayıtlara Dayanarak Oluşturulan Belgeler, Finansal Tablolar vb. İşlenen Kişisel Veriler	10 Yıl	6102 sayılı Türk Ticaret Kanunu'
    'Genel Kurul İşlemleri Uyarınca İşlenen Veriler	10 Yıl	6102 sayılı Türk Ticaret Kanunu'
    'Şirketin Taraf Olduğu Sözleşmelerin Kurulması ve İçeriğine İlişkin Kişisel Veriler	10 Yıl	6102 sayılı Türk Ticaret Kanunu'
    'Tüketicinin Bilgilendirilmesine ve Cayma Hakkını Kullanabilmesine İlişkin Sesli veya Elektronik Ortamdaki Bilgiler	3 Yıl	27866 Sayılı Resmi Gazetede Yayınlanan Mesafeli Sözleşmelere Dair Yönetmelik'
    'Mal ve Hizmetleri Tanıtmak, Pazarlamak, İşletmesini Tanıtmak ya da Kutlama ve Temenni gibi İçeriklerle Tanınırlığı Artırmak Amacıyla Alıcıların Elektronik İletişim Adreslerine Gönderilen Ticari Elektronik İletilere İlişkin Onay Kayıtları	1 Yıl	29417 Sayılı 15.07.2015 Tarihli Resmi Gazetede Yayınlanan Ticari İletişim ve Ticari Elektronik İletiler Hakkında yönetmelik'
    'Mal ve Hizmetleri Tanıtmak, Pazarlamak, İşletmesini Tanıtmak ya da Kutlama ve Temenni gibi İçeriklerle Tanınırlığı Artırmak Amacıyla Alıcıların Elektronik İletişim Adreslerine Gönderilen Ticari Elektronik İletilere İlişkin Onay Kayıtları Dışındaki Veriler	1 Yıl	29417 Sayılı 15.07.2015 Tarihli Resmi Gazetede Yayınlanan Ticari İletişim ve Ticari Elektronik İletiler Hakkında yönetmelik'
    'Sözleşmeden Kaynaklı İlişkilerde İşlenen Kişisel Veriler (Örn: Şirket Yetkilisi, Ad Soyad , imza sirküleri vb.)	Sözleşmenin Sona Ermesine Müteakip 10 Yıl	6098 Sayılı Türk Borçlar Kanunu'
    'Vergisel Kayıtlara İlişkin Kişisel Veriler	5 Yıl	213 Sayılı Vergi Usul Kanunu'
    'Fatura/Gider Pusulası/Makbuz gibi Vergi Usul Kanunu Uyarınca Tutulması gereken Belgelerle işlenen Kişisel Veriler	5 Yıl	213 Sayılı Vergi Usul Kanunu'
    'Ziyaretçilerin Kişisel Verileri	2 Yıl	5651 Sayılı Kanun (Şirketin Wi-Fi Ağına Erişim Sağlayan Ziyaretçiler İçin)'
    'CCTV Kameraları Uyarınca Güvenlik Amaçlı Olarak İşlenen Kişisel Veriler (Kamera Kayıtları)	90 Gün	Sektörel Teamül'
    'Çalışanların Kişisel Verilerinin Yer Aldığı Ortamlara İlişkin Yaptığı Erişimlerin Log Kayıtları	En Az 2 Yıl Olmak Suretiyle İş Davalarına Konu Olabilmesi Sebebiyle 10 Yıl	5651 Sayılı Kanun Gereği ve TİB (Telekomünikasyon İletişim Başkanlığı) Yönetmelikleri'
    'Şirket İnternet Ağının Kullanılması, İnternet Giriş ve Uzaktan Bağlantı esnasında İşlenen Trafik Bilgileri (Örn: IP adres, verilen hizmetin başlama ve bitiş zamanı, yararlanılan hizmetin türü, aktarılan veri miktarı ve varsa abone kimlik bilgileri vb.)	2 Yıl	5651 Sayılı İnternet Ortamında Yapılan Yayınların Düzenlenmesi ve Bu Yayınlar Yoluyla İşlenen Suçlarla Mücadele Edilmesi Hakkında Kanun'
    '6502 Sayılı Tüketicinin Korunması Hakkında Kanun Gereğince Satış Sonrası Hizmet Verilmesinin Zorunlu Olması Sebebiyle İşlenen Kişisel Veriler (Örn: Müşteri İletişim Bilgileri)	15 Yıl	6502 Sayılı Tüketicinin Korunması Hakkında Kanun, 13.06.2014 Tarih ve 29029 Sayılı Resmi Gazetede Yayınlanan Satış Sonrası Hizmetler Yönetmeliği'
    'Müşteri Bilgilerinden, TTK 82. Maddesi Uyarınca ticari defter ve kayıtlara dayanak teşkil eden faturaların düzenlenmesine ilişkin kişisel veriler	10 Yıl	6102 Sayılı Türk Ticaret Kanunu'
    'Müşteri İşlem Bilgileri (Müşterilerin Talep /Şikayet/önerilerine İlişkin Çağrı Kayıtları vb.)	10 Yıl	6098 Sayılı Türk Borçlar Kanunu'
    'Potansiyel Müşterilere İlişkin Veriler (Örn: cookies, çerezler, linkedin üzerinden profillemeye ilişkin veriler)	13 Ay	Avrupa Birliği / Sektörel Teamül Uygulaması'
    '8- İLGİLİ KİŞİLERİN AYDINLATILMASI VE BİLGİLENDİRİLMESİ'
    'Kişisel verileriniz işlenmeden önce hangi kişisel verilerinizin, hangi yöntemlerle, hangi amaçlar için, hangi sürelerle işleneceği ve kişisel verileriniz üzerindeki haklarınız ve bu haklarınızın nasıl kullanılacağı “modagulay.com” tarafından ilgili kişilere anlaşılacak bir şekilde ve detaylı olarak bildirilmektedir. İlgili kişiler, işlenen kişisel verilerine ilişkin bilgi talebinde bulunabilmektedirler.'
    'Kişisel verilerine ilişkin taleplerini KVKK Aydınlatma Metni nde belirtilen yöntemlerle fiziki veya elektronik ortamda iletmeleri halinde kanuni süreler içerisinde “modagulay.com” tarafından gerekli bilgilendirme yapılmaktadır.'
    '9- KİŞİSEL VERİLERİNİZ ÜZERİNDEKİ HAKLARINIZ VE BU HAKLARINIZIN NASIL KULLANILACAĞI'
    '“modagulay.com” tarafından kişisel verileriniz işlenmeden önce, hangi kişisel verilerinizin, hangi yöntemlerle, hangi amaçlar için, hangi sürelerle işleneceği ve kişisel verileriniz üzerindeki haklarınız ve bu haklarınızın nasıl kullanılacağına dair tarafınıza aydınlatma metni sunulmaktadır.'
    'Kişisel veri sahipleri olarak aşağıda belirtilen haklarınıza ilişkin olarak taleplerinizi, başvuru formunda belirtilen veya kanunen öngörülmüş şekiller vasıtasıyla iletebilirsiniz. Taleplerinizi “modagulay.com” a iletmeniz halinde, başvurunuz tarafımıza ulaşmasından itibaren 30 (otuz) gün içerisinde cevaplandırılacaktır.'
    '6698 sayılı KVK Kanunu’ nun 11’ inci maddesinde ilgili kişinin hakları şu şekilde belirtilmiştir; buna göre herkes, veri sorumlusuna başvurarak kendisiyle ilgili;'
    'a) Kişisel veri işlenip işlenmediğini öğrenme,'
    'b) Kişisel verileri işlenmişse buna ilişkin bilgi talep etme,'
    'c) Kişisel verilerin işlenme amacını ve bunların amacına uygun kullanılıp kullanılmadığını öğrenme,'
    'ç) Yurt içinde veya yurt dışında kişisel verilerin aktarıldığı üçüncü kişileri bilme,'
    'd) Kişisel verilerin eksik veya yanlış işlenmiş olması hâlinde bunların düzeltilmesini isteme,'
    'e) 7 nci maddede öngörülen şartlar çerçevesinde kişisel verilerin silinmesini veya yok edilmesini isteme, f) (d) ve (e) bentleri uyarınca yapılan işlemlerin, kişisel verilerin aktarıldığı üçüncü kişilere bildirilmesini isteme,'
    'f) İşlenen verilerin münhasıran otomatik sistemler vasıtasıyla analiz edilmesi suretiyle kişinin kendisi aleyhine bir sonucun ortaya çıkmasına itiraz etme,'
    'g) Kişisel verilerin kanuna aykırı olarak işlenmesi sebebiyle zarara uğraması hâlinde zararın giderilmesini talep etme, haklarına sahiptir.'
    '•  Kişisel Veri Başvuru Formu'
    '10- KİŞİSEL VERİLERİNİZİN SİLİNMESİ, YOK EDİLMESİ VE ANONİMLEŞTİRİLMESİ'
    '“modagulay.com” olarak kişisel verilerinizin güvenliği bizim için çok önemlidir. Bu çerçevede “KVK Kanunu” nun 7. maddesi ile Türk Ceza Kanununu 138. maddesinde düzenlendiği üzere ilgili mevzuata uygun şekilde işlenmiş olan kişisel verileriniz, işlenmesini gerektiren hukuki sebebin ortadan kalkmasıyla birlikte veya ilgili kişinin talebi doğrultusunda silinir, yok edilir veya anonim hale getirilir. “modagulay.com” olarak kanuni olarak tarafımıza yüklenmiş olan bu yükümlülüğü yerine getirebilmek için gerekli teknik ve idari tedbiri alarak, gerekli işleyiş mekanizmaları oluşturulmuş olup, bu yükümlülüklere uygun davranmak üzere ilgili iş birimleri eğitilmekte, geliştirilmekte ve farkındalık sağlanmaktadır.'
    '“modagulay.com” olarak kişisel verilerinizin silinmesi, yok edilmesi veya anonim hale getirilmesine ilişkin olarak detaylı bilgilendirme Kişisel Verilerin Silinmesi, Yok Edilmesi veya Anonim Hale Getirilmesi hakkında Yönetmelik kapsamında oluşturulan “Kişisel Veri Saklama ve İmha Politikası” mızda detaylı olarak açıklanmıştır.'
    '11-GİZLİLİK VE KİŞİSEL VERİLERİNİZİN KORUNMASI POLİTİKASINDA YAPILACAK DEĞİŞİKLİKLER'
    '“modagulay.com” Gizlilik ve Kişisel Verilerin Korunması politikasında kanunların öngördüğü şekilde her zaman değişiklik yapabilir. Bu değişiklikler “Gizlilik ve Kişisel Verilerin Korunması Politikası” nda derhal yayınlanarak yürürlüğe girer. “Gizlilik ve Kişisel Verilerin Korunması Politikası” hakkındaki görüş ve önerileriniz için lütfen bizimle iletişime geçin. info@modagulay.com');
