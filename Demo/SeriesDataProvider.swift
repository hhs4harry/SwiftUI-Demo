import Foundation
import UIKit.UIImage

final class SeriesDataProvider {

	struct Series {

		struct Season {
			struct Episode {
				let title: String
			}

			let name: String
			let icon: UIImage
			let episodes: [Episode]
		}

		let title: String
		let subtitle: String
		let icon: UIImage
		let banner: UIImage
		let seasons: [Season]
	}

	let series: [Series] = [
		.init(
			title: "Game of Thrones",
			subtitle: "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and the icy horrors beyond.",
			icon: UIImage(named: "got")!,
			banner: UIImage(named: "gotb")!,
			seasons: [
				.init(
					name: "Season 1",
					icon: UIImage(named: "gots1")!,
					episodes: [
						.init(title: "Winter is Coming"),
						.init(title: "The kingsroad"),
						.init(title: "Lord Snow"),
						.init(title: "Cripples, Bastards, and Broken Things"),
						.init(title: "The Wolf and the Lion"),
						.init(title: "A Golden Crown"),
						.init(title: "You Win or You Die"),
						.init(title: "The Pointy End"),
						.init(title: "Baelor"),
					]
				),
				.init(
					name: "Season 2",
					icon: UIImage(named: "gots2")!,
					episodes: [
						.init(title: "The North Remembers"),
						.init(title: "The Night Lands"),
						.init(title: "What is Dead May Never Die"),
						.init(title: "Garden of Bones"),
						.init(title: "The Ghost of Harrenhal"),
						.init(title: "The Old Gods and the New"),
						.init(title: "A Man Without Honor"),
						.init(title: "The Prince of Winterfell"),
						.init(title: "Blackwater"),
						.init(title: "Valar Morghulis"),
					]
				),
				.init(
					name: "Season 3",
					icon: UIImage(named: "gots3")!,
					episodes: [
						.init(title: "Valar Dohaeris"),
						.init(title: "Dark Wings, Dark Words"),
						.init(title: "Walk of Punishment"),
						.init(title: "And Now His Watch Is Ended"),
						.init(title: "Kissed by Fire"),
						.init(title: "The Climb"),
						.init(title: "The Bear and the Maiden Fair"),
						.init(title: "Second Sons"),
						.init(title: "The Rains of Castamere"),
						.init(title: "Mhysa"),
					]
				),
				.init(
					name: "Season 4",
					icon: UIImage(named: "gots4")!,
					episodes: [
						.init(title: "Two Swords"),
						.init(title: "The Lion and the Rose"),
						.init(title: "Breaker of Chains"),
						.init(title: "Oathkeeper"),
						.init(title: "First of His Name"),
						.init(title: "The Laws of Gods and Men"),
						.init(title: "Mockingbird"),
						.init(title: "The Mountain and the Viper"),
						.init(title: "The Watchers on the Wall"),
						.init(title: "The Children"),
					]
				),
				.init(
					name: "Season 5",
					icon: UIImage(named: "gots5")!,
					episodes: [
						.init(title: "The Wars to Come"),
						.init(title: "The House of Black and White"),
						.init(title: "High Sparrow"),
						.init(title: "Sons of the Harpy"),
						.init(title: "Kill the Boy"),
						.init(title: "Unbowed, Unbent, Unbroken"),
						.init(title: "The Gift"),
						.init(title: "Hardhome"),
						.init(title: "The Dance of Dragons"),
						.init(title: "Mother's Mercy"),
					]
				),
				.init(
					name: "Season 6",
					icon: UIImage(named: "gots6")!,
					episodes: [
						.init(title: "The Red Woman"),
						.init(title: "Home"),
						.init(title: "Oathbreaker"),
						.init(title: "Book of the Stranger"),
						.init(title: "The Door"),
						.init(title: "Blood of My Blood"),
						.init(title: "The Broken Man"),
						.init(title: "No One"),
						.init(title: "Battle of the Bastards"),
						.init(title: "The Winds of Winter"),
					]
				),
				.init(
					name: "Season 7",
					icon: UIImage(named: "gots7")!,
					episodes: [
						.init(title: "Dragonstone"),
						.init(title: "Stormborn"),
						.init(title: "The Queen's Justice"),
						.init(title: "The Spoils of War"),
						.init(title: "Eastwatch"),
						.init(title: "Beyond the Wall"),
						.init(title: "The Dragon and the Wolf"),
					]
				),
				.init(
					name: "Season 8",
					icon: UIImage(named: "gots8")!,
					episodes: [
						.init(title: "Winterfell"),
						.init(title: "A Knight of the Seven Kingdoms"),
						.init(title: "The Long Night"),
						.init(title: "The Last of the Starks"),
						.init(title: "The Bells"),
						.init(title: "The Iron Throne"),
					]
				),
			]
		),
		.init(
			title: "Breaking Bad",
			subtitle: "Walter White, a struggling high school chemistry teacher, is diagnosed with advanced lung cancer. He turns to a life of crime, producing and selling methamphetamine accompanied by a former student, Jesse Pinkman, with the aim of securing his family's financial future before he dies.",
			icon: UIImage(named: "bb")!,
			banner: UIImage(named: "bbb")!,
			seasons: [
				.init(
					name: "Season 1",
					icon: UIImage(named: "bbs1")!,
					episodes: [
						.init(title: "Pilot"),
						.init(title: "Cat's in the Bag..."),
						.init(title: "...And the Bag's in the River"),
						.init(title: "Cancer Man"),
						.init(title: "Gray Matter"),
						.init(title: "Crazy Handful of Nothin'"),
						.init(title: "A No-Rough-Stuff-Type Deal"),
					]
				),
				.init(
					name: "Season 2",
					icon: UIImage(named: "bbs2")!,
					episodes: [
						.init(title: "Seven Thirty-Seven"),
						.init(title: "Grilled"),
						.init(title: "Bit by a Dead Bee"),
						.init(title: "Down"),
						.init(title: "Breakage"),
						.init(title: "Peekaboo"),
						.init(title: "Negro y Azul"),
						.init(title: "Better Call Saul"),
						.init(title: "4 Days Out"),
						.init(title: "Over"),
						.init(title: "Mandala"),
						.init(title: "Phoenix"),
						.init(title: "ABQ"),
					]
				),
				.init(
					name: "Season 3",
					icon: UIImage(named: "bbs3")!,
					episodes: [
						.init(title: "No Mas"),
						.init(title: "Caballo Sin Nombre"),
						.init(title: "I.F.T."),
						.init(title: "Green Light"),
						.init(title: "Mas"),
						.init(title: "Sunset"),
						.init(title: "One Minute"),
						.init(title: "I See You"),
						.init(title: "Kafkaesque"),
						.init(title: "Fly"),
						.init(title: "Abiquiu"),
						.init(title: "Half Measures"),
						.init(title: "Full Measure"),
					]
				),
				.init(
					name: "Season 4",
					icon: UIImage(named: "bbs4")!,
					episodes: [
						.init(title: "Box Cutter"),
						.init(title: "Thirty-Eight Snub"),
						.init(title: "Open House"),
						.init(title: "Bullet Points"),
						.init(title: "Shotgun"),
						.init(title: "Cornered"),
						.init(title: "Problem Dog"),
						.init(title: "Problem Dog"),
						.init(title: "Hermanos"),
						.init(title: "Bug"),
						.init(title: "Salud"),
						.init(title: "Crawl Space"),
						.init(title: "End Times"),
					]
				),
				.init(
					name: "Season 5",
					icon: UIImage(named: "bbs5")!,
					episodes: [
						.init(title: "Live Free or Die"),
						.init(title: "Madrigal"),
						.init(title: "Hazard Pay"),
						.init(title: "Fifty-One"),
						.init(title: "Dead Freight"),
						.init(title: "Buyout"),
						.init(title: "Say My Name"),
						.init(title: "Gliding Over All"),
						.init(title: "Blood Money"),
						.init(title: "Buried"),
						.init(title: "Confessions"),
						.init(title: "Rabid Dog"),
						.init(title: "To'hajiilee"),
						.init(title: "Ozymandias"),
						.init(title: "Granite State"),
						.init(title: "elina"),
					]
				),
			]
		)
	]
}
