import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
      infosSports: [
        {
          id: '1',
          id_categorie:'1',
          nom:'Plongée sous-marine',
          description: "La plongée sous-marine est une activité consistant à rester sous l'eau marine soit en apnée, soit en respirant à l'aide d'un narguilé(tuyau apportant de l'air depuis la surface) ou le plus souvent en s' équipant d'une bouteille de plongée.",
          date:'2021-03-09',
          prix:'25',
          img:'img/act/plongee.jpg',
          visible : false
        },
        {
          id: '2',
          id_categorie:'1',
          nom:"Exploration d'épave",
          description:"Dans le domaine maritime, une épave est ce qui reste d'un navire en mer, sur le rivage ou au fond de la mer, après avoir été abandonné, s’être échoué ou avoir coulé à la suite d'un événement de mer ou d'un sabordage.",
          date:'2021-02-12',
          prix:'50',
          img:'img/act/epave.jpg',
          visible : false
        },
        {
          id: '3',
          id_categorie:'1',
          nom:'Apnée sportive',
          description:"L'apnée est une dicipline sportive non sans danger, car elle expose le pratiquant à un certain nombre de risques potentiellement grave. Cette pratique consiste à suspendre de manière volontaire la ventilation sous l'eau.",
          date:'2021-04-17',
          prix:'12',
          img:'img/act/apnee.jpg',
          visible : false
        },
        {
          id: '4',
          id_categorie:'1',
          nom:'Exploration de réserve maritime',
          description:"Les réserves maritime sont des aires protégée qui sont des outils de conservations efficace des ressources halieutiques (poissons, mollusques ect..)",
          date:'2021-03-14',
          prix:'39',
          img:'img/act/reserve.jpg',
          visible : false
        },
        {
          id: '5',
          id_categorie:'2',
          nom:'Surf',
          description:"Le surf est une action ou une pratique physique de glisse sur les vagues, au bord de l'océan. Il est pratiqué debout sur une planche.",
          date:'2021-05-15',
          prix:'30',
          img:'img/act/surf.jpg',
          visible : false
        },
        {
          id: '6',
          id_categorie:'2',
          nom:'Kitesurf',
          description:"Le kitesurf est un sport de glisse consistant à évoluer avec une planche à la surface d'une étendue d'eau en étant tracté par un cerf-volant spécialement adapté, nommé aile ou voile.",
          date:'2021-03-12',
          prix:'45',
          img:'img/act/kitesurf.jpg',
          visible : false
        },
        {
          id: '7',
          id_categorie:'2',
          nom:'Planche à voile',
          description:"La planche à voile est un type d'embarcation à voile minimaliste, c'est aussi le sport de glisse pratiqué avec cette embarcation. Elle est constituée d'une simple planche ou flotteur, et d'un gréement articulé à la planche par la base du mât.",
          date:'2021-06-11',
          prix:'59',
          img:'img/act/voile.jpg',
          visible : false
        },
        {
          id: '8',
          id_categorie:'2',
          nom:'Paddle',
          description:"Le paddle est un sport de glisse nautique où le pratiquant se tient debout sur une planche plus longue qu'une planche de surf classique, se propulsant à l'aide d'une pagaie.",
          date:'2021-03-05',
          prix:'11',
          img:'img/act/paddle.jpg',
          visible : false
        },
        {
          id: '9',
          id_categorie:'3',
          nom:'Bouée tractée',
          description:"La bouée tractée est une activité nautique qui fait sensation sur les plages en été. L'appellation regroupe aussi bien les bouées individuelle, pour plusieurs personnes ou les fameuses bouées banane",
          date:'2021-03-11',
          prix:'15',
          img:'img/act/bouee.jpg',
          visible : false
        },
        {
          id: '10',
          id_categorie:'3',
          nom:'Ski nautique',
          description:"Le ski nautique est un sport nautique consistant à se faire tracter par un bateau à moteur en étant sur des ski. Il comporte quatre disciplines :le slalom, les figures, et saut et le combiné.",
          date:'2021-02-24',
          prix:'11',
          img:'img/act/ski.jpg',
          visible : false
        },
        {
          id: '11',
          id_categorie:'3',
          nom:'Wakeboard',
          description:"Le wakeboard est un sport nautique. Le pratiquant de wakeboard est relié par un palonnier à un bateau à moteur qui le tracte, glisse sur l'eu en se maintenant ssur une planche de type surf ou skate.",
          date:'2021-03-28',
          prix:'20',
          img:'img/act/wakeboard.jpg',
          visible : false
        },
        {
          id: '12',
          id_categorie:'3',
          nom:'Jet ski',
          description:"Sur un plan d'eau, l'océan ou la mer, et au départ d'une plage, d'un port ou d'une base de loisirs, le jetski est une activité aquatique saisonnière très appréciée. Combinant vitesse, découverte et adrénaline dans les vagues, il est idéal pour une sortie nautique et ludique.",
          date:'2021-03-29',
          prix:'80',
          img:'img/act/jetski.jpg',
          visible : false
        },
        {
          id: '13',
          id_categorie:'4',
          nom:'Croisière Fort Boyard',
          description:"Cette croisière commentée vous fera passer un agréable moment à l'ombre de ce majestueux édifice. Elle comprend : approche du Fort Enet, tour complet du Fort Boyard et un tour de l'île d'Aix.",
          date:'2021-03-28',
          prix:'14',
          img:'img/act/fortboyard.jpg',
          visible : false
        },
        {
          id: '14',
          id_categorie:'4',
          nom:'Promenade en canoë/kayak',
          description:"Le canoë-kayak et ses activités associées se pratiquent à bord d'une embarcation propulsée à la pagaie, en eau calme, en mer et en eau vive. La pagaie est un instrument à une ou deux pales permettant de propulser une embarcation sans point d'appui sur le flotteur",
          date:'2021-05-24',
          prix:'15',
          img:'img/act/kayak.jpg',
          visible : false
        },
        {
          id: '15',
          id_categorie:'4',
          nom:'Location de bâteau',
          description:"Elle comprend le Pertuis d’Antioche et le Pertuis Breton, sa plus grande partie est située à l’abri des îles de Ré et d’Oléron. Quelque soit le temps, il y a toujours la possibilité d’y effectuer une navigation très agréable et de trouver des ports charmants ou des mouillages tranquilles. Deux jours de navigation ne suffiront pas pour explorer un tel périmètre !",
          date:'2021-03-27',
          prix:'100',
          img:'img/act/bateau.jpg',
          visible : false
        },
        {
          id: '16',
          id_categorie:'4',
          nom:'4',
          description:"4",
          date:'2021-03-05',
          prix:'4',
          img:'img/act/bateau.jpg',
          visible : false
        }
      ]
    }
    ,
    mutations: {
},
actions: {
},
modules: {
}

})
