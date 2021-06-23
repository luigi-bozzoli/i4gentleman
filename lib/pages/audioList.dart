import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:i4gentleman/audioCouple.dart';
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:url_launcher/url_launcher.dart';

String test;

class audioList extends StatefulWidget {

  bool danny, maurizio, murry, thomas;

  audioList({
    this.danny = false,
    this.maurizio = false,
    this.murry = false,
    this.thomas = false});

  @override
  audioListState createState() => audioListState();
}

class audioListState extends State<audioList> {

  List<audioCouple> list = [];

  AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    createList();
    list.sort(sortAudio);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    String appBarTitle = "";
    String url = "";

    if (widget.murry) {
      appBarTitle = "Il principe di xmurria";
      url = "https://www.youtube.com/user/xMurryPwNz";
    } else if (widget.maurizio) {
      appBarTitle = "Il conte del merluzzo";
      url = "https://www.youtube.com/user/mmerluzzo";
    } else if (widget.danny) {
      appBarTitle = "Il duca della massellanza";
      url = "https://www.youtube.com/c/DANNYLAZZARINpersonaltrainer/featured";
    } else if (widget.thomas) {
      appBarTitle = "Il barone del marenduzzo";
      url = "https://www.youtube.com/channel/UCRKqGnFMHwIrnYiuZh24SUQ/featured";
    }


    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.lightGreen[900],
          backgroundColor: Colors.green[900],
          title: Text(appBarTitle),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(icon: Icon(Icons.open_in_browser), onPressed: () async {
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            }
            )
            /*Padding(
              //padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    Icons.open_in_browser
                ),
              )
          ),*/
          ],
        ),
        body: Container(
          // color: Colors.lightGreen[900],
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                  child: Card(
                    shape: new RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.amber, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0)),
                    //color: Colors.blue,
                    child: ListTile(
                      onTap: () async {
                        await player.setAsset(list[index].path);
                        player.play();
                      },
                      title: Text(list[index].text, textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold)),

                    ),
                  ),
                );
              }),
        )
    );
  }


  createList() {
    if (widget.danny) {
      List<audioCouple> tmp = [
        new audioCouple('118!', 'assets/danny/118.mp3'),
        new audioCouple('Accipicchia', 'assets/danny/accipicchia.mp3'),
        new audioCouple('Adaeh', 'assets/danny/adarh.mp3'),
        new audioCouple('A pallet bianca', 'assets/danny/apalletbiancha.mp3'),
        new audioCouple('Natica asfisiata', 'assets/danny/asfisianatica.wav'),
        new audioCouple('Barone!', 'assets/danny/barone.mp3'),
        new audioCouple('Il bellissimo mondo di Thomas',
            'assets/danny/bellissimomondodithomas.mp3'),
        new audioCouple(
            'Buongiorno ninja!', 'assets/danny/buongiornoninja.mp3'),
        new audioCouple('Buono o\' bignè', 'assets/danny/buonobigne.mp3'),
        new audioCouple(
            'Mi vuole cacare in fronte?', 'assets/danny/cacareinfronte.mp3'),
        new audioCouple('Che gaffe', 'assets/danny/chegaf.mp3'),
        new audioCouple('Che grosso', 'assets/danny/chegrosso.mp3'),
        new audioCouple('Che sciocco', 'assets/danny/chesciocco.mp3'),
        new audioCouple(
            'Chi cazz è questo?', 'assets/danny/chicazzequesto.mp3'),
        new audioCouple('Ci faccio squat', 'assets/danny/cifacciosquat.mp3'),
        new audioCouple('Compaesà!', 'assets/danny/compaesa.mp3'),
        new audioCouple('L\'ha comprata con la mandarina',
            'assets/danny/comprataconlamandarina.mp3'),
        new audioCouple(
            'Sto sabodando', 'assets/danny/cribbiostosabodando.mp3'),
        new audioCouple('Davanti ai miei occhi c\'è uno scroto gonfio',
            'assets/danny/davantiaimieiocchi.mp3'),
        new audioCouple(
            'Deve piantare chiodi?', 'assets/danny/devepiantaredeichiodi.mp3'),
        new audioCouple('Problemi di comprensione',
            'assets/danny/difficilecapireconchistoparlando.mp3'),
        new audioCouple('Dottore!', 'assets/danny/dottore.mp3'),
        new audioCouple('Dove va? Cosa sta facendo?',
            'assets/danny/dovevacosastafacendo.mp3'),
        new audioCouple('Eah!', 'assets/danny/ea.mp3'),
        new audioCouple('Fetuso!', 'assets/danny/ehfetuso.mp3'),
        new audioCouple('E\' tonico', 'assets/danny/etonico.mp3'),
        new audioCouple('Fammelo sentire', 'assets/danny/fammelosentire.mp3'),
        new audioCouple(
            'Fate che cazzo volete', 'assets/danny/fatechecazzovolete.mp3'),
        new audioCouple(
            'Fatti i cazzi tuoi', 'assets/danny/fattiicazzituoi.mp3'),
        new audioCouple('Fragolo', 'assets/danny/fragolo.mp3'),
        new audioCouple('Fuoco in buca!', 'assets/danny/fuocoinbuca.mp3'),
        new audioCouple('Grazie', 'assets/danny/graziegraziedavvero.mp3'),
        new audioCouple(
            'Ha intriso il dito', 'assets/danny/haintrisoildito.mp3'),
        new audioCouple('Il barone indica', 'assets/danny/ilbaroneindica.mp3'),
        new audioCouple(
            'Il barone non parla...', 'assets/danny/ilbaronenonparla.mp3'),
        new audioCouple('Vuole imbottigliare il nettare?',
            'assets/danny/imbottigliarenettare.mp3'),
        new audioCouple('Le piaccio?', 'assets/danny/lepiaccio.mp3'),
        new audioCouple(
            'Lui non mangia, beve', 'assets/danny/luinonmangiabeve.mp3'),
        new audioCouple(
            'Cosa sta succedendo!?', 'assets/danny/macosastasuccedendo.mp3'),
        new audioCouple(
            'Madre lingua sogno', 'assets/danny/madrelinguasogno.mp3'),
        new audioCouple('Ha mai visto Stranger Things?',
            'assets/danny/maivistostrangerthings.mp3'),
        new audioCouple('Lei è un maragià', 'assets/danny/maragia.mp3'),
        new audioCouple('Lei è menzoniero', 'assets/danny/menzoniero.mp3'),
        new audioCouple('Merde!', 'assets/danny/merde.mp3'),
        new audioCouple(
            'Perla di saggezza', 'assets/danny/mettitisulcigliodelfiume.mp3'),
        new audioCouple('Mi accingo', 'assets/danny/miaccingo.mp3'),
        new audioCouple('Mi autorizza?', 'assets/danny/miautorizza.mp3'),
        new audioCouple('Minchia!', 'assets/danny/minchia.mp3'),
        new audioCouple('Minchia fetuso!', 'assets/danny/minchiafetuso.mp3'),
        new audioCouple(
            'Minchia sono mafioso', 'assets/danny/minchiasonomafioso.mp3'),
        new audioCouple('Minchioril', 'assets/danny/minchioril.mp3'),
        new audioCouple('Nano di merda', 'assets/danny/nanodimerda.mp3'),
        new audioCouple('No in faccia', 'assets/danny/noinfaccia.mp3'),
        new audioCouple(
            'Non inculo le capre', 'assets/danny/nonmiinculolecapre.mp3'),
        new audioCouple('Non mi metta in bocca cose che non ho detto',
            'assets/danny/nonmimettainbocca.mp3'),
        new audioCouple('Non permetterti mai più',
            'assets/danny/nonpermettertimaipiu.mp3'),
        new audioCouple(
            'Ora degli schiaffoni', 'assets/danny/oradeglischiaffoni.mp3'),
        new audioCouple('Ornamento del grande membro',
            'assets/danny/ornamentodelgrandemembro.mp3'),
        new audioCouple('Palla fuori hi ha!', 'assets/danny/pallafuoriih.mp3'),
        new audioCouple(
            'Perla di saggezza 2', 'assets/danny/perladisaggezza.mp3'),
        new audioCouple(
            'Perla di ignoranza', 'assets/danny/perledignoranza.mp3'),
        new audioCouple(
            'Per me un poco di minchia', 'assets/danny/permeminchia.mp3'),
        new audioCouple(
            'Bello pezzo di sticchiu', 'assets/danny/pezzodisticchiu.mp3'),
        new audioCouple(
            'Posizione del merlo', 'assets/danny/posizionemerlo.mp3'),
        new audioCouple('Potresti farti i cazzi tuoi',
            'assets/danny/potrestifartiicazzituoi.mp3'),
        new audioCouple('Presidente?', 'assets/danny/presidente.mp3'),
        new audioCouple(
            'Provocazione o seduzione?', 'assets/danny/provocazione.mp3'),
        new audioCouple(
            'Rimbalza chi dentro', 'assets/danny/rimbalzachidentro.mp3'),
        new audioCouple('Risata 1', 'assets/danny/risata.mp3'),
        new audioCouple('Risata 2', 'assets/danny/risata1.wav'),
        new audioCouple('Risata 3', 'assets/danny/risata2.mp3'),
        new audioCouple('Risata 4', 'assets/danny/risata3.mp3'),
        new audioCouple('Rototraslazione', 'assets/danny/rototraslazione.mp3'),
        new audioCouple('Sconosce', 'assets/danny/sconosce.mp3'),
        new audioCouple('Scopare!', 'assets/danny/scopare.mp3'),
        new audioCouple(
            'Senti che durello', 'assets/danny/sentichedurello.mp3'),
        new audioCouple('Shhhshhh', 'assets/danny/shhshh.mp3'),
        new audioCouple('*shiaffo*', 'assets/danny/shiaffone.mp3'),
        new audioCouple('Siculo sono', 'assets/danny/siculosono.mp3'),
        new audioCouple(
            'Sono pezzi di minchia', 'assets/danny/sonopezzidiminchia.mp3'),
        new audioCouple('Sorregga, cortesemente', 'assets/danny/sorregga.mp3'),
        new audioCouple('Sta masturbando', 'assets/danny/stamasturbando.mp3'),
        new audioCouple('Sta minchia', 'assets/danny/staminchia.mp3'),
       // new audioCouple('Ha mai visto Stranger Things?', 'assets/danny/strangerthings.mp3'),
        new audioCouple('Strunz quello piccolo mi mangio',
            'assets/danny/strunzquellipiccolo.mp3'),
        new audioCouple('Suca!', 'assets/danny/suca.mp3'),
        new audioCouple('Sucoril', 'assets/danny/sucoril.mp3'),
        new audioCouple(
            'Tiro fuori il ferro e sparo', 'assets/danny/tirofuoriilferro.mp3'),
        new audioCouple('Tutto ok?', 'assets/danny/tuttook.mp3'),
        new audioCouple('Urla 1', 'assets/danny/urla.mp3'),
        new audioCouple('Urla 2', 'assets/danny/urla2.mp3'),
        new audioCouple('Uvo', 'assets/danny/uvo.mp3'),
        new audioCouple('La stitichezza ha trovato via libera',
            'assets/danny/vialiberastitichezza.mp3'),
        new audioCouple(
            'Voleranno schiaffi', 'assets/danny/volerannoschiaffi.mp3'),
        new audioCouple(
            'Vuoi darci un bacino?', 'assets/danny/vuoidarciunbacino.mp3'),
        new audioCouple('Vuole coricarsi?', 'assets/danny/vuolecoricarsi.mp3')

      ];
      list = tmp;
    } else if (widget.murry) {
      List<audioCouple> tmp = [
        new audioCouple('Astro-cazzo', 'assets/murry/stocazzo.mp3'),
        new audioCouple('Come ci si sente', 'assets/murry/18.mp3'),
        new audioCouple('7 è meglio di 6', 'assets/murry/7meglio6.mp3'),
        new audioCouple('Si è aggrumato la siciliana',
            'assets/murry/aggrumatosiciliana.mp3'),
        new audioCouple('Aiutami 1', 'assets/murry/aiutami.mp3'),
        new audioCouple('Aiutami 2', 'assets/murry/aiutami2.mp3'),
        new audioCouple('Hakuna matata ragazzi!', 'assets/murry/hakunamatata.mp3'),
        new audioCouple('Alla minchia', 'assets/murry/allaminchai.mp3'),
        new audioCouple('Al minchiotril', 'assets/murry/alminchiotril.mp3'),
        //new audioCouple('text', 'assets/murry/altri4gentleman.mp3'),
        new audioCouple('Angora?', 'assets/murry/angora.mp3'),
        new audioCouple('Ao test e minchia', 'assets/murry/aotestminchia.mp3'),
        new audioCouple(
            'A\' scassat a minchia', 'assets/murry/ascassataminchia.mp3'),
        new audioCouple('Barboni!', 'assets/murry/barboni.mp3'),
        new audioCouple(
            'Vorrei un becchino come lei', 'assets/murry/becchinocomelei.mp3'),
        new audioCouple('Bello scroto', 'assets/murry/belloscroto.mp3'),
        new audioCouple('Brava la minchia', 'assets/murry/bravaminchia.mp3'),
        new audioCouple('Cannavacciuolo 1', 'assets/murry/cannavacciuolo.mp3'),
        new audioCouple('Cannavacciuolo 2', 'assets/murry/cannavacciuolo2.mp3'),
        new audioCouple('Cannavacciuolo 3', 'assets/murry/cannavacciuolo3.mp3'),
        new audioCouple('Cannavacciuolo 4', 'assets/murry/cannavacciuolo4.mp3'),
        new audioCouple(
            'Casato di imbecilli', 'assets/murry/casatodiimbecilli.mp3'),
        new audioCouple('Chi meglio arriva tardi alloggia',
            'assets/murry/chimeglioarrivatardialloggia.mp3'),
        new audioCouple(
            'Come sono bello oggi', 'assets/murry/comesonobellooggi.mp3'),
        new audioCouple('Consinderandosi', 'assets/murry/considerandosi.mp3'),
        new audioCouple(
            'Lei è cornuto e sbirro', 'assets/murry/cornutoesbirro.mp3'),
        new audioCouple(
            'Doppiamente grazie', 'assets/murry/doppiamentegrazie.mp3'),
        new audioCouple('Dovrebbe accettare le critiche',
            'assets/murry/dovrebbeaccettarelecritiche.mp3'),
        new audioCouple('Ei fù...', 'assets/murry/eifu.mp3'),
        new audioCouple('Elegantemente imbrattato',
            'assets/murry/elegantementeimbrattato.mp3'),
        //new audioCouple('Fica!', 'assets/murry/fica.mp3'),
        new audioCouple('Fij e puttan', 'assets/murry/fijeputtan.mp3'),
        new audioCouple(
            'Food challenge di cazzate', 'assets/murry/foodchallenge.mp3'),
        new audioCouple(
            'Ha un bel merluzzo', 'assets/murry/haunbelmerluzzo.mp3'),
        new audioCouple(
            'Ho avuto gli zirconi', 'assets/murry/hoavutoglizirconi.mp3'),
        new audioCouple('Il barone non parla...',
            'assets/murry/ilbaronenonparla.mp3'),
        new audioCouple(
            'Tu ti senti superiore di me', 'assets/murry/ingarbugliamento.mp3'),
        new audioCouple(
            'Ingoio il rospo e non solo', 'assets/murry/ingoioilrospo.mp3'),
        new audioCouple(
            'La mancanza di fiducia è sinonimo di mancanza di fiducia',
            'assets/murry/lamancanzadifiducia.mp3'),
        new audioCouple('La mia ragazza non li fa così bene',
            'assets/murry/lamiaragazzanonlifacosibene.mp3'),
        new audioCouple(
            'Perla di saggezza', 'assets/murry/lavitaeunpiattodignocchi.mp3'),
        new audioCouple('Le metto in bocca questo e ben altro',
            'assets/murry/lemettoinboccaquestoebenaltro.mp3'),
        new audioCouple('Less is more', 'assets/murry/lessismore.mp3'),
        new audioCouple('Lo sconoscevo', 'assets/murry/losconoscevo.mp3'),
        new audioCouple('Lei ha mai mangiato un ossimoro?',
            'assets/murry/mangiatoossimoro.mp3'),
        new audioCouple(
            'Pesci maschili', 'assets/murry/merluzzopescespada.mp3'),
        new audioCouple('... minchia ...', 'assets/murry/mesaminchia.mp3'),
        new audioCouple('Mi deconcentri', 'assets/murry/mideconcentri.mp3'),
        new audioCouple(
            'Mi ha un pò inorridito', 'assets/murry/mihaunpoinorridito.mp3'),
        new audioCouple('Minchia!', 'assets/murry/minchia.mp3'),
        new audioCouple(
            'Minchia benvenuti', 'assets/murry/minchiabenvenuti.mp3'),
        new audioCouple(
            'Minchia che pesante', 'assets/murry/minchiachepesante.mp3'),
        new audioCouple(
            'Mi intendo di falli', 'assets/murry/mintendodifalli.mp3'),
        new audioCouple(
            'Mi sminchio tutto', 'assets/murry/misminchiotutto.mp3'),
        new audioCouple('Mi sono confuso', 'assets/murry/misonoconfuso.mp3'),
        new audioCouple('Murry poeta 1', 'assets/murry/murrypoeta.mp3'),
        new audioCouple('*soffoca*', 'assets/murry/murrysoffoca.mp3'),
        new audioCouple('La imulo', 'assets/murry/nonlaimulo.mp3'),
        new audioCouple(
            'Non l\'ho guardata', 'assets/murry/nonlhoguardata.mp3'),
        new audioCouple(
            'Non me ne frega un cazzo', 'assets/murry/nonmenefregaunca.mp3'),
        new audioCouple(
            'Non riesco a cagare', 'assets/murry/nonriescoacagare.mp3'),
        new audioCouple('O pasticciu', 'assets/murry/opasticciu.mp3'),
        new audioCouple('Ora ci faccio la proposta',
            'assets/murry/oracifacciolaproposta.mp3'),
        new audioCouple('Ospitalità e ospitalità',
            'assets/murry/ospitalitaeospitalita.mp3'),
        new audioCouple(
            'Le palle fino in fondo', 'assets/murry/pallefinoinfondo.mp3'),
        new audioCouple('Pijatelo!', 'assets/murry/pijatelo.mp3'),
        new audioCouple('Murry poeta 2', 'assets/murry/poeta2.mp3'),
        new audioCouple('Potrebbe tornare sempre per me',
            'assets/murry/potrebbetornaresempreperme.mp3'),
        new audioCouple('Quel che è fatto è tratto',
            'assets/murry/quelcheefattoetratto.mp3'),
        new audioCouple('Quelli piccoli', 'assets/murry/quellipiccoli.mp3'),
        new audioCouple(
            'Questo stronza quà!', 'assets/murry/questostronzo.mp3'),
        new audioCouple(
            'Quoziente intellettivo', 'assets/murry/quozienteintellettivo.mp3'),
        new audioCouple(
            'Facciamo un ragù insieme?', 'assets/murry/raguinsieme.mp3'),
        new audioCouple(
            'Regolaimentazione', 'assets/murry/regolaimentazione.mp3'),
        new audioCouple('Rigenererha', 'assets/murry/rigenererha.mp3'),
        new audioCouple(
            'Cosa si prova ad avere scambiato i capelli con la barba',
            'assets/murry/scambiocapellibarba.mp3'),
        new audioCouple('Se ci piace lo sgombro',
            'assets/murry/se ci piace lo sgombro.mp3'),
        new audioCouple('Se mia nonna...', 'assets/murry/semianonna.mp3'),
        new audioCouple(
            'Se ne vada affanculo', 'assets/murry/senevadaafanculo.mp3'),
        new audioCouple('Sesso', 'assets/murry/sesso.mp3'),
        new audioCouple('Sfidarci-vi-ti', 'assets/murry/sfidarciviti.mp3'),
        new audioCouple('Siii', 'assets/murry/si.mp3'),
        new audioCouple('So burning!', 'assets/murry/soburning.mp3'),
        new audioCouple(
            'Solleticazione parti intime', 'assets/murry/solleticazione.mp3'),
        new audioCouple('Sono pentito', 'assets/murry/sonopentito.mp3'),
        new audioCouple('So refreshing!', 'assets/murry/soresfreshing.mp3'),
        new audioCouple(
            'Ho sputato una caccola', 'assets/murry/sputatoscecacaccola.mp3'),
        new audioCouple('Stai esagerando 1', 'assets/murry/staiesagerando.mp3'),
        new audioCouple(
            'Stai esagerando 2', 'assets/murry/staiesagerando2.mp3'),
        new audioCouple('Stai parlando troppo, bum bum, morto',
            'assets/murry/staiparlandotroppo.mp3'),
        new audioCouple('Testa di cazzo', 'assets/murry/testadicazzo.mp3'),
        new audioCouple('Vaffanculo', 'assets/murry/vaffanculo.mp3'),
        new audioCouple('Vuoti psicofisicimotori',
            'assets/murry/vuotipsicofisichiemotori.mp3'),
        new audioCouple('What are you doing pezzo di merda?',
            'assets/murry/whatareyoudoing.mp3')

      ];
      list = tmp;
    } else if (widget.thomas) {
      List<audioCouple> tmp = [
        new audioCouple('Non capisco sto 5G', 'assets/thomas/5g.mp3'),
        new audioCouple('Perla di saggezza 1', 'assets/thomas/aiuncan.mp3'),
        new audioCouple('Amazing!', 'assets/thomas/amazing.mp3'),
        new audioCouple('A pecorina', 'assets/thomas/apecorina.mp3'),
        new audioCouple('Appare, traspare', 'assets/thomas/apparetraspare.mp3'),
        new audioCouple('Bar-bone', 'assets/thomas/barbone.mp3'),
        new audioCouple(
            'Barcollo ma non mollo', 'assets/thomas/barcollomanonmollo.mp3'),
        new audioCouple('Bionda, mora, non filtrata',
            'assets/thomas/biondamoranonfiltrata.mp3'),
        new audioCouple('Di birra e di fregna il basso s\'impregna',
            'assets/thomas/birraedifregna.mp3'),
        new audioCouple('Bu bu quanti corni', 'assets/thomas/bubu.mp3'),
        new audioCouple('*burp*', 'assets/thomas/burp.mp3'),
        new audioCouple(
            'Colcolo le calorie', 'assets/thomas/calcololecalorie.mp3'),
        new audioCouple('Come no?', 'assets/thomas/comeno.mp3'),
        new audioCouple('Defizit', 'assets/thomas/defizit.mp3'),
        new audioCouple('E\' un dissing', 'assets/thomas/dissing.mp3'),
        new audioCouple('Don\'t try this at home', 'assets/thomas/donttry.mp3'),
        new audioCouple('Eh, il gesso', 'assets/thomas/eilgesso.mp3'),
        new audioCouple('E\' pur sempre un mito', 'assets/thomas/eunmito.mp3'),
        new audioCouple(
            'E\' venuto molto prima', 'assets/thomas/evenutomoltoprima.mp3'),
        new audioCouple(
            'Ex con problemi si stitichezza', 'assets/thomas/exstitica.mp3'),
        new audioCouple('GentlemenT', 'assets/thomas/genetlemant.mp3'),
        new audioCouple('La gravatta', 'assets/thomas/gravatta.wav'),
        new audioCouple('Si è inseminita', 'assets/thomas/inseminita.mp3'),
        new audioCouple('Instagramm', 'assets/thomas/instagramm.mp3'),
        new audioCouple('I piedi, le ginocchia e il culo',
            'assets/thomas/ipiedileginocchia.mp3'),
        new audioCouple('La mia bottega chiude all\'una e mezza ',
            'assets/thomas/lamiabottegachiude.mp3'),
        new audioCouple(
            'Perla di saggezza 2', 'assets/thomas/lavitaeunlimite.mp3'),
        new audioCouple('Le donne lo sanno, ..., le donne lo han sempre saputo',
            'assets/thomas/ledonnelosanno.mp3'),
        new audioCouple('Legge dei numeri', 'assets/thomas/leggedeinumeri.mp3'),
        new audioCouple('Questa risposta gliela possono dare le sue ex',
            'assets/thomas/lesueex.mp3'),
        new audioCouple('Ma che Kratos...', 'assets/thomas/machekratos.mp3'),
        new audioCouple('Ma che stacco...', 'assets/thomas/machestacco.mp3'),
        new audioCouple('Malusplus', 'assets/thomas/malusplus.mp3'),
        new audioCouple('Ma non è da 1 a 10', 'assets/thomas/manoneda1a10.mp3'),
        new audioCouple('Marzo pazzerello, guarda il sole e prendi l\'ombrello',
            'assets/thomas/marzopazzerello....mp3'),
        new audioCouple('Me la dai?', 'assets/thomas/meladai.mp3'),
        new audioCouple('Minchiasché', 'assets/thomas/minchiasche.mp3'),
        new audioCouple(
            'Mi piace la nutella', 'assets/thomas/mipiacelanutella.mp3'),
        new audioCouple('Mi ustri', 'assets/thomas/miustri.mp3'),
        new audioCouple('Non ho capito', 'assets/thomas/nonhocapito.mp3'),
        new audioCouple('Non ho parlato', 'assets/thomas/nonhoparlato.mp3'),
        new audioCouple('Perla di saggezza 3',
            'assets/thomas/nonpiangalattedagliocchi.mp3'),
        new audioCouple(
            'Ma io non scopo mai?', 'assets/thomas/nonscopomai.mp3'),
        new audioCouple('Non sta a toccare niente che spacchi tutto',
            'assets/thomas/nonstaatoccareniente.mp3'),
        new audioCouple('OMG, AMAZING!', 'assets/thomas/omgamazing.mp3'),
        new audioCouple(
            'Penso che la limonerò', 'assets/thomas/pensochelalimonero.mp3'),
        new audioCouple('Pesce che mangia carne non si è mai visto',
            'assets/thomas/pescechemangiacarne.mp3'),
        new audioCouple('Praterie di perle di ignoranza',
            'assets/thomas/prateriediperledignoranza.mp3'),
        new audioCouple(
            'Pratica tipo fisting', 'assets/thomas/praticatipofisting.mp3'),
        new audioCouple('Perla di saggezza 4', 'assets/thomas/rossodisera.mp3'),
        new audioCouple(
            'Ero posseduto da San Francesco', 'assets/thomas/sanfrancesco.mp3'),
        new audioCouple('Mi si sta sgonfiando lo scroto',
            'assets/thomas/scrotosgonfio.mp3'),
        new audioCouple('Se mia nonna...', 'assets/thomas/semianonna.mp3'),
        new audioCouple('Quando vedo te sento le campane',
            'assets/thomas/sentolecampane.mp3'),
        new audioCouple(
            'S\'è spaccata una sedia!', 'assets/thomas/sespaccatasedia.mp3'),
        new audioCouple('Siete dei cornuti', 'assets/thomas/sietecornuto.mp3'),
        new audioCouple(
            'Ho comprato una smart TV', 'assets/thomas/smarttv.mp3'),
        new audioCouple('Sono abituato a investire',
            'assets/thomas/sonoabituatoainvestire.mp3'),
        new audioCouple('Perla di saggezza incompleta',
            'assets/thomas/sonocomeledonne.mp3'),
        new audioCouple('*starnuto*', 'assets/thomas/starnuto.mp3'),
        new audioCouple('Perla di saggezza 5', 'assets/thomas/tagliare.mp3'),
        new audioCouple('Non è la prima volta che ti inceppi',
            'assets/thomas/tiinceppi.mp3'),
        new audioCouple('Toso...', 'assets/thomas/toso.mp3'),
        new audioCouple('Una cosa che mi piace mangiare è la patata',
            'assets/thomas/unacosachemipiacemangiare.mp3'),
        new audioCouple(
            'Uno grosso poca miccia', 'assets/thomas/unogrossopocamiccia.mp3'),
        new audioCouple('Vai Maurizio 1', 'assets/thomas/vaimaurizio.mp3'),
        new audioCouple('Vai Maurizio 2', 'assets/thomas/vaimaurizio2.mp3'),
        new audioCouple('Vai Maurizio 3', 'assets/thomas/vaimaurizio3.mp3'),
        new audioCouple('Visito allo scroto', 'assets/thomas/visitoscroto.mp3'),
        new audioCouple('Vorrei essere orbo per indossare i suoi occhiali',
            'assets/thomas/vorreiessereorbo.mp3'),
        new audioCouple('Vorrei limonarla', 'assets/thomas/vorreilimonarla.mp3')

      ];
      list = tmp;
    } else if (widget.maurizio) {
      List<audioCouple> tmp = [
        new audioCouple('1, 2, 3', 'assets/maurizio/123.mp3'),
        new audioCouple('20 chili so salito la settimana scorsa',
            'assets/maurizio/20chilisosalito.mp3'),
        new audioCouple('Maestro Hun Katsu', 'assets/maurizio/acazzo.mp3'),
        //new audioCouple('Ha ', 'assets/maurizio/accettarsicosicome.mp3'),
        new audioCouple('Accipicche', 'assets/maurizio/accipicche.mp3'),
        new audioCouple('Ho cercato di darle una mano psicologicamente',
            'assets/maurizio/aiutopsicologico.mp3'),
        new audioCouple('Lei è altamente soporifero', 'assets/maurizio/altamentesoporifero.mp3'),
        new audioCouple('Amici, zii, cugini, parenti...',
            'assets/maurizio/amiciziicugini.mp3'),
        new audioCouple('E\' il famoso animale leggendario',
            'assets/maurizio/animaleleggendario.mp3'),
        //new audioCouple('text', 'assets/maurizio/aooo.mp3'),
       // new audioCouple('Benvenuti ninja a tavola', 'assets/maurizio/benvenutininja.mp3'),
        new audioCouple(
            'Bombetta gentleman', 'assets/maurizio/bombagentleman2.mp3'),
        new audioCouple(
            'Bombetta ragazzi', 'assets/maurizio/bombettaragazzi.wav'),
        new audioCouple('Buono', 'assets/maurizio/buono.mp3'),
        new audioCouple(
            'Cannavacciuolo 1', 'assets/maurizio/cannavacciuolo.mp3'),
        new audioCouple(
            'Cannavacciuolo 2', 'assets/maurizio/cannavacciuolo2.mp3'),
        new audioCouple(
            'Cannavacciuolo 3', 'assets/maurizio/cannavacciuolo3.mp3'),
        new audioCouple(
            'Cannavacciuolo 4', 'assets/maurizio/cannavacciuolo4.mp3'),
        new audioCouple(
            'Cannavacciuolo 5', 'assets/maurizio/cannavacciuolo5.mp3'),
        new audioCouple(
            'Cannavacciuolo 6', 'assets/maurizio/cannavacciuolo6.mp3'),
        new audioCouple('Chi sbaglia verrà picchiato',
            'assets/maurizio/chisbagliaverrapicchiato.mp3'),
        new audioCouple(
            'Citando gli orchi', 'assets/maurizio/citazioneorchi.mp3'),
        new audioCouple(
            'Come diceva Dante', 'assets/maurizio/comedicevadante.mp3'),
        new audioCouple('Comeee', 'assets/maurizio/comeee.mp3'),
        new audioCouple('Comeee, eh', 'assets/maurizio/comeee2.mp3'),
        new audioCouple(
            'Un conte che conta', 'assets/maurizio/contecheconta.mp3'),
        new audioCouple(
            'E\' un tentativo di corruzione', 'assets/maurizio/corruzione.mp3'),
        new audioCouple('Lei sembra lo zio Fester che fa il cosplay di Kratos',
            'assets/maurizio/cosplayziofester.mp3'),
        new audioCouple(
            'Daje de tacco, daje de punta', 'assets/maurizio/dajedetacco.mp3'),
        new audioCouple('Dammi na mano pe\' piacere',
            'assets/maurizio/dammiunamanoperpiacere.mp3'),
        new audioCouple(
            'Da quarke parte saremo pure', 'assets/maurizio/daquarkeparte.mp3'),
        new audioCouple('I dati piangono perché sono sensibili',
            'assets/maurizio/datisensibili.mp3'),
        new audioCouple('Dimme se la faccio bene',
            'assets/maurizio/dimmeselafacciobene.mp3'),
        new audioCouple('Disgustati', 'assets/maurizio/disgustati.mp3'),
        new audioCouple('C\'è il tempo per disseppellirla',
            'assets/maurizio/disseppellirla.mp3'),
        new audioCouple('Esercizio più efficace dato il doppiopetto',
            'assets/maurizio/doppiopetto.mp3'),
        new audioCouple('eHeHGrAzIe', 'assets/maurizio/eHeHgrazie.mp3'),
        new audioCouple('Lei sa distinguere le voci',
            'assets/maurizio/eingradodidistinguerelevoci.mp3'),
        new audioCouple('Essendo lei un coach mi aspettavo dello scotch',
            'assets/maurizio/essendoleiuncoach.mp3'),
        new audioCouple('FINISCO IO LA FRASE', 'assets/maurizio/finiscoio.mp3'),
        new audioCouple('*fischio*', 'assets/maurizio/fischio.mp3'),
        new audioCouple('Gugugulan', 'assets/maurizio/gugugulan.mp3'),
        new audioCouple('Ho necessità di spazio per scendere dall\'auto',
            'assets/maurizio/honecessitadispazio.mp3'),
        new audioCouple('hihihi', 'assets/maurizio/ihihi.mp3'),
        new audioCouple(
            'Il barone non parla...', 'assets/maurizio/ilbaronenonparla.mp3'),
        new audioCouple(
            'Il tempo è tirana', 'assets/maurizio/iltempoetirana.mp3'),
        new audioCouple('IL TEMPO STESSO', 'assets/maurizio/ILTEMPOSTESSO.mp3'),
        new audioCouple('Io faccio sesso e magia',
            'assets/maurizio/iofacciosessoemagia.mp3'),
        new audioCouple('Quando sente parlare in italiano corretto sono io',
            'assets/maurizio/italianocorretto.mp3'),
        //  new audioCouple('text', 'assets/maurizio/lacombinazione.mp3'),
        new audioCouple('La lingua batte dove il clito ride',
            'assets/maurizio/lalinguabatte.mp3'),
        new audioCouple('La terra si fa la crosta quando si sbuccia?',
            'assets/maurizio/laterrasisbuccia.mp3'),
        new audioCouple(
            'Leccornia o leccòrnia', 'assets/maurizio/leccorniaoleccornia.mp3'),
        new audioCouple('Le faccio chiudere il canale',
            'assets/maurizio/lefacciochiudereilcanale.mp3'),
        new audioCouple('L\'osceno del villaggio',
            'assets/maurizio/loscenodelvillaggio.mp3'),
        new audioCouple(
            'Lo vuoi il palloncino?', 'assets/maurizio/lovuoiilpalloncino.mp3'),
        new audioCouple('Aiuto per il massimale 1',
            'assets/maurizio/manoafaremassimale.mp3'),
        new audioCouple('Aiuto per il massimale 2',
            'assets/maurizio/manoafaremassimale2.mp3'),
        new audioCouple('Aiuto per il massimale 3',
            'assets/maurizio/manoafaremassimale3.mp3'),
        new audioCouple('Maremma maiala!', 'assets/maurizio/maremmamaiala.mp3'),
        new audioCouple('Mauri lo dici a tuo cugino',
            'assets/maurizio/maurilodiciatuocugino.mp3'),
        new audioCouple(
            'Ma vai a fare 3/4 di cacca', 'assets/maurizio/mavaiafare34.mp3'),
        new audioCouple('In un anno non è stato in grado di metabolizzarlo',
            'assets/maurizio/metabolismolento.mp3'),
        new audioCouple(
            'Lei è melatoninoso', 'assets/maurizio/melatoninoso.mp3'),
        new audioCouple('Mi FaI uN VoCaLe pEr Un AmIcO',
            'assets/maurizio/mifaiunvocale.mp3'),
        new audioCouple('Mi ispiro alla sua mole',
            'assets/maurizio/miispiroallasuamole.mp3'),
        new audioCouple('Minchino', 'assets/maurizio/minchino.mp3'),
        new audioCouple(
            '... mi sento un po\'', 'assets/maurizio/misentounpo.mp3'),
        new audioCouple('Nefandonia è una città dei Pokemon',
            'assets/maurizio/nefandonia.mp3'),
        new audioCouple('Noi stolti che ci poniamo domande',
            'assets/maurizio/noistolti.mp3'),
        new audioCouple('Non ci sono più le mezze stagioni',
            'assets/maurizio/noncisonomezzestagioni.mp3'),
        new audioCouple(
            'Non entra la retro', 'assets/maurizio/nonentralaretro.mp3'),
        new audioCouple('Non menta!', 'assets/maurizio/nonmenta.mp3'),
        new audioCouple('ooooooh 1', 'assets/maurizio/ooooooh.mp3'),
        new audioCouple('ooooooh 2', 'assets/maurizio/ooooooh2.mp3'),
        new audioCouple('ooooooh 3', 'assets/maurizio/ooooooh3.mp3'),
        new audioCouple('L\'operatore non prende bene',
            'assets/maurizio/operatorenonprende.mp3'),
        new audioCouple('outfitfit', 'assets/maurizio/outfitfit.mp3'),
        new audioCouple(
            'Il passato di Maurizio', 'assets/maurizio/passatodimaurizio.mp3'),
        new audioCouple('Adesso non posso parlare, pensano che io sia pazzo',
            'assets/maurizio/pensanocheiosiapazzo.mp3'),
        new audioCouple(
            'Perle di saggezza', 'assets/maurizio/perledisaggezza.mp3'),
        new audioCouple('Per me è sì', 'assets/maurizio/permeesi.mp3'),
        new audioCouple('Pesah!', 'assets/maurizio/pesa.mp3'),
        new audioCouple('E\' molto più forte di quella di Giorgio',
            'assets/maurizio/piufortediquelladigiorgio.mp3'),
        new audioCouple('Quanto sono buone le proteine con le pere',
            'assets/maurizio/proteineconlepere.mp3'),
        new audioCouple(
            'Può chiamarmi delfino', 'assets/maurizio/puochiamarmidelfino.mp3'),
        new audioCouple(
            'Quanto grugniranno i porcellini quando sentiranno le gride del vecchio cinghiale',
            'assets/maurizio/quantogrugnirannoiporcellini.mp3'),
        new audioCouple(
            'Il ragù che avanza', 'assets/maurizio/ragucheavanza.mp3'),
        new audioCouple('Sta bruciando le mie retine',
            'assets/maurizio/retineinfiamme.mp3'),
        new audioCouple(
            'Riflesso pelata', 'assets/maurizio/riflessopelata.mp3'),
        new audioCouple('Rigurgitello', 'assets/maurizio/rigurgitello.mp3'),
        new audioCouple(
            'Risata malefica', 'assets/maurizio/risatamalefica.mp3'),
        new audioCouple('Come ci si sente a rivivere un trauma?',
            'assets/maurizio/rivivereuntrauma.mp3'),
        new audioCouple('Ha fatto una cosa alla Rocco Siffredi',
            'assets/maurizio/roccosiffredi.mp3'),
        new audioCouple(
            'Se è verde vado avanti', 'assets/maurizio/seeverde.mp3'),
        new audioCouple(
            'Sei gentile peroh!', 'assets/maurizio/seigentilepero.mp3'),
        new audioCouple('Se mi nonno...', 'assets/maurizio/seminonno.mp3'),
        new audioCouple(
            'Sento del torpiloquio', 'assets/maurizio/sentodeltorpiloquio.mp3'),
        new audioCouple('Non se piagne sulle lasagne',
            'assets/maurizio/sipiangesullatteversato.mp3'),
        new audioCouple(
            'Sono doppiatore', 'assets/maurizio/sonodoppiatore.mp3'),
        new audioCouple('SOUP!', 'assets/maurizio/soup.mp3'),
        new audioCouple('Sucami il cazzo', 'assets/maurizio/sucamiilcazzo.mp3'),
        new audioCouple('Teletubbie', 'assets/maurizio/teletubbies.mp3'),
        new audioCouple(
            'Tiro fuori l\'uccello', 'assets/maurizio/tirofuoriluccello.mp3'),
        new audioCouple(
            'Tu lo dici al telefono', 'assets/maurizio/tulodicialtelefono.mp3'),
        new audioCouple(
            'Ho sentito volare un usignuolo', 'assets/maurizio/usignolo.mp3'),
        new audioCouple('Nel sistema operativo c\'è un virus letale',
            'assets/maurizio/virusletale.mp3'),
        new audioCouple(
            'Visto come imula?', 'assets/maurizio/vistocomeimula.mp3')
      ];
      list = tmp;
    }
  }

  int sortAudio(audioCouple a, audioCouple b) {
    return a.text.compareTo(b.text);
  }
}
