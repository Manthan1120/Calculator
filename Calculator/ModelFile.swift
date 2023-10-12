

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let sections: [Section]
    let moreAvailable: Bool
    let nextMaxID: String
    let nextPage: Int
    let nextMediaIDS: [JSONAny]
    let autoLoadMoreEnabled: Bool
    let status, endCursor: String

    enum CodingKeys: String, CodingKey {
        case sections
        case moreAvailable = "more_available"
        case nextMaxID = "next_max_id"
        case nextPage = "next_page"
        case nextMediaIDS = "next_media_ids"
        case autoLoadMoreEnabled = "auto_load_more_enabled"
        case status
        case endCursor = "end_cursor"
    }
}

// MARK: - Section
struct Section: Codable {
    let layoutType: LayoutType
    let layoutContent: LayoutContent
    let feedType: FeedType
    let exploreItemInfo: ExploreItemInfo

    enum CodingKeys: String, CodingKey {
        case layoutType = "layout_type"
        case layoutContent = "layout_content"
        case feedType = "feed_type"
        case exploreItemInfo = "explore_item_info"
    }
}

// MARK: - ExploreItemInfo
struct ExploreItemInfo: Codable {
    let numColumns, totalNumColumns: Int
    let aspectRatio: Double
    let autoplay: Bool

    enum CodingKeys: String, CodingKey {
        case numColumns = "num_columns"
        case totalNumColumns = "total_num_columns"
        case aspectRatio = "aspect_ratio"
        case autoplay
    }
}

enum FeedType: String, Codable {
    case clips = "clips"
    case feed = "feed"
}

// MARK: - LayoutContent
struct LayoutContent: Codable {
    let medias: [MediaElement]
}

// MARK: - MediaElement
struct MediaElement: Codable {
    let media: MediaMedia
}

// MARK: - MediaMedia
struct MediaMedia: Codable {
    let takenAt: Int
    let pk: Double
    let id: String
    let deviceTimestamp: Int
    let clientCacheKey: String
    let filterType: Int
    let captionIsEdited, likeAndViewCountsDisabled: Bool
    let strongID: String
    let isReshareOfTextPostAppMediaInIg, isPostLiveClipsMedia: Bool
    let deletedReason: Int
    let integrityReviewDecision: IntegrityReviewDecision
    let hasSharedToFb: Int
    let isUnifiedVideo, shouldRequestAds, isVisualReplyCommenterNoticeEnabled: Bool
    let commercialityStatus: CommercialityStatus
    let exploreHideComments: Bool
    let usertags: Tags?
    let photoOfYou: Bool?
    let shopRoutingUserID: JSONNull?
    let canSeeInsightsAsBrand, isOrganicProductTaggingEligible, hasLiked: Bool
    let likeCount: Int
    let topLikers: [String]
    let mediaType: Int
    let code: String
    let canViewerReshare: Bool
    let caption: Caption
    let clipsTabPinnedUserIDS: [JSONAny]
    let commentInformTreatment: CommentInformTreatment
    let fundraiserTag: FundraiserTag
    let sharingFrictionInfo: SharingFrictionInfo
    let playCount: Int
    let mediaAppreciationSettings: MediaAppreciationSettings
    let originalMediaHasVisualReplyMedia: Bool
    let fbUserTags: Tags
    let canViewerSave, isInProfileGrid, profileGridControlEnabled: Bool
    let featuredProducts: [JSONAny]
    let isCommentsGIFComposerEnabled: Bool
    let mediaCroppingInfo: MediaCroppingInfo
    let productSuggestions: [JSONAny]
    let user: User
    let imageVersions2: ImageVersions2
    let originalWidth, originalHeight: Int
    let isArtistPick: Bool
    let productType: FeedType
    let isPaidPartnership: Bool
    let location: Location?
    let reshareCount: Int
    let musicMetadata: JSONNull?
    let organicTrackingToken: String
    let isThirdPartyDownloadsEligible, igMediaSharingDisabled: Bool
    let crosspost: [Crosspost]?
    let lng, lat: Double?
    let isOpenToPublicSubmission: Bool
    let commentLikesEnabled: Bool?
    let commentThreadingEnabled: Bool
    let maxNumVisiblePreviewComments: Int
    let hasMoreComments: Bool
    let nextMaxID: Double?
    let previewComments: [PreviewComment]
    let commentCount: Int
    let canViewMorePreviewComments, hideViewAllCommentEntrypoint: Bool
    let creativeConfig: CreativeConfig?
    let hasDelayedMetadata, isAutoCreated, isCutoutStickerAllowed: Bool
    let clipsMetadata: ClipsMetadata
    let isDashEligible: Int
    let videoDashManifest, videoCodec: String
    let numberOfQualities: Int
    let videoVersions: [VideoVersion]
    let hasAudio: Bool
    let videoDuration: Double
    let fbLikeCount, fbPlayCount: Int?
    let coauthorProducers: [CoauthorProducer]?
    let commerceIntegrityReviewDecision: String?
    let subscribeCtaVisible: Bool?
    let likers: [CoauthorProducer]?
    let videoSubtitlesConfidence: Double?
    let commentingDisabledForViewer: Bool?
    let invitedCoauthorProducers: [JSONAny]?

    enum CodingKeys: String, CodingKey {
        case takenAt = "taken_at"
        case pk, id
        case deviceTimestamp = "device_timestamp"
        case clientCacheKey = "client_cache_key"
        case filterType = "filter_type"
        case captionIsEdited = "caption_is_edited"
        case likeAndViewCountsDisabled = "like_and_view_counts_disabled"
        case strongID = "strong_id__"
        case isReshareOfTextPostAppMediaInIg = "is_reshare_of_text_post_app_media_in_ig"
        case isPostLiveClipsMedia = "is_post_live_clips_media"
        case deletedReason = "deleted_reason"
        case integrityReviewDecision = "integrity_review_decision"
        case hasSharedToFb = "has_shared_to_fb"
        case isUnifiedVideo = "is_unified_video"
        case shouldRequestAds = "should_request_ads"
        case isVisualReplyCommenterNoticeEnabled = "is_visual_reply_commenter_notice_enabled"
        case commercialityStatus = "commerciality_status"
        case exploreHideComments = "explore_hide_comments"
        case usertags
        case photoOfYou = "photo_of_you"
        case shopRoutingUserID = "shop_routing_user_id"
        case canSeeInsightsAsBrand = "can_see_insights_as_brand"
        case isOrganicProductTaggingEligible = "is_organic_product_tagging_eligible"
        case hasLiked = "has_liked"
        case likeCount = "like_count"
        case topLikers = "top_likers"
        case mediaType = "media_type"
        case code
        case canViewerReshare = "can_viewer_reshare"
        case caption
        case clipsTabPinnedUserIDS = "clips_tab_pinned_user_ids"
        case commentInformTreatment = "comment_inform_treatment"
        case fundraiserTag = "fundraiser_tag"
        case sharingFrictionInfo = "sharing_friction_info"
        case playCount = "play_count"
        case mediaAppreciationSettings = "media_appreciation_settings"
        case originalMediaHasVisualReplyMedia = "original_media_has_visual_reply_media"
        case fbUserTags = "fb_user_tags"
        case canViewerSave = "can_viewer_save"
        case isInProfileGrid = "is_in_profile_grid"
        case profileGridControlEnabled = "profile_grid_control_enabled"
        case featuredProducts = "featured_products"
        case isCommentsGIFComposerEnabled = "is_comments_gif_composer_enabled"
        case mediaCroppingInfo = "media_cropping_info"
        case productSuggestions = "product_suggestions"
        case user
        case imageVersions2 = "image_versions2"
        case originalWidth = "original_width"
        case originalHeight = "original_height"
        case isArtistPick = "is_artist_pick"
        case productType = "product_type"
        case isPaidPartnership = "is_paid_partnership"
        case location
        case reshareCount = "reshare_count"
        case musicMetadata = "music_metadata"
        case organicTrackingToken = "organic_tracking_token"
        case isThirdPartyDownloadsEligible = "is_third_party_downloads_eligible"
        case igMediaSharingDisabled = "ig_media_sharing_disabled"
        case crosspost, lng, lat
        case isOpenToPublicSubmission = "is_open_to_public_submission"
        case commentLikesEnabled = "comment_likes_enabled"
        case commentThreadingEnabled = "comment_threading_enabled"
        case maxNumVisiblePreviewComments = "max_num_visible_preview_comments"
        case hasMoreComments = "has_more_comments"
        case nextMaxID = "next_max_id"
        case previewComments = "preview_comments"
        case commentCount = "comment_count"
        case canViewMorePreviewComments = "can_view_more_preview_comments"
        case hideViewAllCommentEntrypoint = "hide_view_all_comment_entrypoint"
        case creativeConfig = "creative_config"
        case hasDelayedMetadata = "has_delayed_metadata"
        case isAutoCreated = "is_auto_created"
        case isCutoutStickerAllowed = "is_cutout_sticker_allowed"
        case clipsMetadata = "clips_metadata"
        case isDashEligible = "is_dash_eligible"
        case videoDashManifest = "video_dash_manifest"
        case videoCodec = "video_codec"
        case numberOfQualities = "number_of_qualities"
        case videoVersions = "video_versions"
        case hasAudio = "has_audio"
        case videoDuration = "video_duration"
        case fbLikeCount = "fb_like_count"
        case fbPlayCount = "fb_play_count"
        case coauthorProducers = "coauthor_producers"
        case commerceIntegrityReviewDecision = "commerce_integrity_review_decision"
        case subscribeCtaVisible = "subscribe_cta_visible"
        case likers
        case videoSubtitlesConfidence = "video_subtitles_confidence"
        case commentingDisabledForViewer = "commenting_disabled_for_viewer"
        case invitedCoauthorProducers = "invited_coauthor_producers"
    }
}

// MARK: - Caption
struct Caption: Codable {
    let pk: String
    let userID: Int
    let user: User
    let type: Int
    let text: String
    let didReportAsSpam: Bool
    let createdAt, createdAtUTC: Int
    let contentType: ContentType
    let status: Status
    let bitFlags: Int
    let shareEnabled, isRankedComment, isCovered: Bool
    let privateReplyStatus: Int
    let mediaID: Double
    let hasTranslation: Bool?

    enum CodingKeys: String, CodingKey {
        case pk
        case userID = "user_id"
        case user, type, text
        case didReportAsSpam = "did_report_as_spam"
        case createdAt = "created_at"
        case createdAtUTC = "created_at_utc"
        case contentType = "content_type"
        case status
        case bitFlags = "bit_flags"
        case shareEnabled = "share_enabled"
        case isRankedComment = "is_ranked_comment"
        case isCovered = "is_covered"
        case privateReplyStatus = "private_reply_status"
        case mediaID = "media_id"
        case hasTranslation = "has_translation"
    }
}

enum ContentType: String, Codable {
    case comment = "comment"
}

enum Status: String, Codable {
    case active = "Active"
}

// MARK: - User
struct User: Codable {
    let fbidV2: String
    let feedPostReshareDisabled: Bool
    let fullName, id: String
    let isPrivate, isUnpublished: Bool
    let pk: Int
    let pkID: String
    let showAccountTransparencyDetails: Bool
    let strongID: String
    let thirdPartyDownloadsEnabled: Int
    let accountBadges: [JSONAny]
    let fanClubInfo: FanClubInfo
    let friendshipStatus: PurpleFriendshipStatus
    let hasAnonymousProfilePicture, isFavorite: Bool
    let profilePicID: String
    let profilePicURL: String
    let reshareXpostDenyReasonsForUser: [String]?
    let transparencyProductEnabled: Bool
    let username: String

    enum CodingKeys: String, CodingKey {
        case fbidV2 = "fbid_v2"
        case feedPostReshareDisabled = "feed_post_reshare_disabled"
        case fullName = "full_name"
        case id
        case isPrivate = "is_private"
        case isUnpublished = "is_unpublished"
        case pk
        case pkID = "pk_id"
        case showAccountTransparencyDetails = "show_account_transparency_details"
        case strongID = "strong_id__"
        case thirdPartyDownloadsEnabled = "third_party_downloads_enabled"
        case accountBadges = "account_badges"
        case fanClubInfo = "fan_club_info"
        case friendshipStatus = "friendship_status"
        case hasAnonymousProfilePicture = "has_anonymous_profile_picture"
        case isFavorite = "is_favorite"
        case profilePicID = "profile_pic_id"
        case profilePicURL = "profile_pic_url"
        case reshareXpostDenyReasonsForUser = "reshare_xpost_deny_reasons_for_user"
        case transparencyProductEnabled = "transparency_product_enabled"
        case username
    }
}

// MARK: - FanClubInfo
struct FanClubInfo: Codable {
    let fanClubID, fanClubName: String?
    let isFanClubReferralEligible: Bool?
    let fanConsiderationPageRevampEligiblity: FanConsiderationPageRevampEligiblity?
    let isFanClubGiftingEligible: Bool?
    let subscriberCount, connectedMemberCount: Int?
    let autosaveToExclusiveHighlight, hasEnoughSubscribersForSsc: Bool?

    enum CodingKeys: String, CodingKey {
        case fanClubID = "fan_club_id"
        case fanClubName = "fan_club_name"
        case isFanClubReferralEligible = "is_fan_club_referral_eligible"
        case fanConsiderationPageRevampEligiblity = "fan_consideration_page_revamp_eligiblity"
        case isFanClubGiftingEligible = "is_fan_club_gifting_eligible"
        case subscriberCount = "subscriber_count"
        case connectedMemberCount = "connected_member_count"
        case autosaveToExclusiveHighlight = "autosave_to_exclusive_highlight"
        case hasEnoughSubscribersForSsc = "has_enough_subscribers_for_ssc"
    }
}

// MARK: - FanConsiderationPageRevampEligiblity
struct FanConsiderationPageRevampEligiblity: Codable {
    let shouldShowSocialContext, shouldShowContentPreview: Bool

    enum CodingKeys: String, CodingKey {
        case shouldShowSocialContext = "should_show_social_context"
        case shouldShowContentPreview = "should_show_content_preview"
    }
}

// MARK: - PurpleFriendshipStatus
struct PurpleFriendshipStatus: Codable {
    let following, outgoingRequest, isBestie, isRestricted: Bool
    let isFeedFavorite: Bool

    enum CodingKeys: String, CodingKey {
        case following
        case outgoingRequest = "outgoing_request"
        case isBestie = "is_bestie"
        case isRestricted = "is_restricted"
        case isFeedFavorite = "is_feed_favorite"
    }
}

// MARK: - ClipsMetadata
struct ClipsMetadata: Codable {
    let musicInfo: MusicInfo?
    let originalSoundInfo: OriginalSoundInfo?
    let audioType: AudioType
    let musicCanonicalID: String
    let featuredLabel: JSONNull?
    let mashupInfo: [String: Bool?]
    let reusableTextInfo: [ReusableTextInfo]?
    let reusableTextAttributeString: String?
    let nuxInfo, viewerInteractionSettings: JSONNull?
    let brandedContentTagInfo: BrandedContentTagInfo
    let shoppingInfo: JSONNull?
    let additionalAudioInfo: AdditionalAudioInfo
    let isSharedToFb: Bool
    let breakingContentInfo, challengeInfo, reelsOnTheRiseInfo, breakingCreatorInfo: JSONNull?
    let assetRecommendationInfo, contextualHighlightInfo: JSONNull?
    let clipsCreationEntryPoint: FeedType
    let audioRankingInfo: AudioRankingInfo
    let templateInfo: TemplateInfo?
    let isFanClubPromoVideo, disableUseInClipsClientCache: Bool
    let contentAppreciationInfo: JSONNull?
    let achievementsInfo: AchievementsInfo
    let showAchievements: Bool
    let showTips, merchandisingPillInfo: JSONNull?
    let isPublicChatWelcomeVideo: Bool
    let professionalClipsUpsellType: Int
    let externalMediaInfo: JSONNull?

    enum CodingKeys: String, CodingKey {
        case musicInfo = "music_info"
        case originalSoundInfo = "original_sound_info"
        case audioType = "audio_type"
        case musicCanonicalID = "music_canonical_id"
        case featuredLabel = "featured_label"
        case mashupInfo = "mashup_info"
        case reusableTextInfo = "reusable_text_info"
        case reusableTextAttributeString = "reusable_text_attribute_string"
        case nuxInfo = "nux_info"
        case viewerInteractionSettings = "viewer_interaction_settings"
        case brandedContentTagInfo = "branded_content_tag_info"
        case shoppingInfo = "shopping_info"
        case additionalAudioInfo = "additional_audio_info"
        case isSharedToFb = "is_shared_to_fb"
        case breakingContentInfo = "breaking_content_info"
        case challengeInfo = "challenge_info"
        case reelsOnTheRiseInfo = "reels_on_the_rise_info"
        case breakingCreatorInfo = "breaking_creator_info"
        case assetRecommendationInfo = "asset_recommendation_info"
        case contextualHighlightInfo = "contextual_highlight_info"
        case clipsCreationEntryPoint = "clips_creation_entry_point"
        case audioRankingInfo = "audio_ranking_info"
        case templateInfo = "template_info"
        case isFanClubPromoVideo = "is_fan_club_promo_video"
        case disableUseInClipsClientCache = "disable_use_in_clips_client_cache"
        case contentAppreciationInfo = "content_appreciation_info"
        case achievementsInfo = "achievements_info"
        case showAchievements = "show_achievements"
        case showTips = "show_tips"
        case merchandisingPillInfo = "merchandising_pill_info"
        case isPublicChatWelcomeVideo = "is_public_chat_welcome_video"
        case professionalClipsUpsellType = "professional_clips_upsell_type"
        case externalMediaInfo = "external_media_info"
    }
}

// MARK: - AchievementsInfo
struct AchievementsInfo: Codable {
    let showAchievements: Bool
    let numEarnedAchievements: JSONNull?

    enum CodingKeys: String, CodingKey {
        case showAchievements = "show_achievements"
        case numEarnedAchievements = "num_earned_achievements"
    }
}

// MARK: - AdditionalAudioInfo
struct AdditionalAudioInfo: Codable {
    let additionalAudioUsername: JSONNull?
    let audioReattributionInfo: AudioReattributionInfo

    enum CodingKeys: String, CodingKey {
        case additionalAudioUsername = "additional_audio_username"
        case audioReattributionInfo = "audio_reattribution_info"
    }
}

// MARK: - AudioReattributionInfo
struct AudioReattributionInfo: Codable {
    let shouldAllowRestore: Bool

    enum CodingKeys: String, CodingKey {
        case shouldAllowRestore = "should_allow_restore"
    }
}

// MARK: - AudioRankingInfo
struct AudioRankingInfo: Codable {
    let bestAudioClusterID: String

    enum CodingKeys: String, CodingKey {
        case bestAudioClusterID = "best_audio_cluster_id"
    }
}

enum AudioType: String, Codable {
    case licensedMusic = "licensed_music"
    case originalSounds = "original_sounds"
}

// MARK: - BrandedContentTagInfo
struct BrandedContentTagInfo: Codable {
    let canAddTag: Bool

    enum CodingKeys: String, CodingKey {
        case canAddTag = "can_add_tag"
    }
}

// MARK: - MusicInfo
struct MusicInfo: Codable {
    let musicAssetInfo: MusicAssetInfo
    let musicConsumptionInfo: MusicConsumptionInfo
    let musicCanonicalID: JSONNull?

    enum CodingKeys: String, CodingKey {
        case musicAssetInfo = "music_asset_info"
        case musicConsumptionInfo = "music_consumption_info"
        case musicCanonicalID = "music_canonical_id"
    }
}

// MARK: - MusicAssetInfo
struct MusicAssetInfo: Codable {
    let audioClusterID, id, title: String
    let sanitizedTitle: JSONNull?
    let subtitle, displayArtist: String
    let artistID: String?
    let coverArtworkURI, coverArtworkThumbnailURI: String
    let progressiveDownloadURL: String
    let reactiveAudioDownloadURL: JSONNull?
    let fastStartProgressiveDownloadURL: String
    let web30SPreviewDownloadURL: JSONNull?
    let highlightStartTimesInMS: [Int]
    let isExplicit: Bool
    let dashManifest: String
    let hasLyrics: Bool
    let audioAssetID: String
    let durationInMS: Int
    let darkMessage: JSONNull?
    let allowsSaving: Bool
    let igUsername: String?
    let isEligibleForAudioEffects: Bool

    enum CodingKeys: String, CodingKey {
        case audioClusterID = "audio_cluster_id"
        case id, title
        case sanitizedTitle = "sanitized_title"
        case subtitle
        case displayArtist = "display_artist"
        case artistID = "artist_id"
        case coverArtworkURI = "cover_artwork_uri"
        case coverArtworkThumbnailURI = "cover_artwork_thumbnail_uri"
        case progressiveDownloadURL = "progressive_download_url"
        case reactiveAudioDownloadURL = "reactive_audio_download_url"
        case fastStartProgressiveDownloadURL = "fast_start_progressive_download_url"
        case web30SPreviewDownloadURL = "web_30s_preview_download_url"
        case highlightStartTimesInMS = "highlight_start_times_in_ms"
        case isExplicit = "is_explicit"
        case dashManifest = "dash_manifest"
        case hasLyrics = "has_lyrics"
        case audioAssetID = "audio_asset_id"
        case durationInMS = "duration_in_ms"
        case darkMessage = "dark_message"
        case allowsSaving = "allows_saving"
        case igUsername = "ig_username"
        case isEligibleForAudioEffects = "is_eligible_for_audio_effects"
    }
}

// MARK: - MusicConsumptionInfo
struct MusicConsumptionInfo: Codable {
    let igArtist: CoauthorProducer?
    let placeholderProfilePicURL: String
    let shouldMuteAudio: Bool
    let shouldMuteAudioReason: String
    let shouldMuteAudioReasonType: JSONNull?
    let isBookmarked: Bool
    let overlapDurationInMS, audioAssetStartTimeInMS: Int
    let allowMediaCreationWithMusic, isTrendingInClips: Bool
    let trendRank, formattedClipsMediaCount, displayLabels: JSONNull?
    let shouldAllowMusicEditing: Bool
    let derivedContentID: JSONNull?
    let audioFilterInfos: [JSONAny]
    let audioMutingInfo: AudioMutingInfo

    enum CodingKeys: String, CodingKey {
        case igArtist = "ig_artist"
        case placeholderProfilePicURL = "placeholder_profile_pic_url"
        case shouldMuteAudio = "should_mute_audio"
        case shouldMuteAudioReason = "should_mute_audio_reason"
        case shouldMuteAudioReasonType = "should_mute_audio_reason_type"
        case isBookmarked = "is_bookmarked"
        case overlapDurationInMS = "overlap_duration_in_ms"
        case audioAssetStartTimeInMS = "audio_asset_start_time_in_ms"
        case allowMediaCreationWithMusic = "allow_media_creation_with_music"
        case isTrendingInClips = "is_trending_in_clips"
        case trendRank = "trend_rank"
        case formattedClipsMediaCount = "formatted_clips_media_count"
        case displayLabels = "display_labels"
        case shouldAllowMusicEditing = "should_allow_music_editing"
        case derivedContentID = "derived_content_id"
        case audioFilterInfos = "audio_filter_infos"
        case audioMutingInfo = "audio_muting_info"
    }
}

// MARK: - AudioMutingInfo
struct AudioMutingInfo: Codable {
    let muteAudio: Bool
    let muteReasonStr: String
    let allowAudioEditing, showMutedAudioToast: Bool

    enum CodingKeys: String, CodingKey {
        case muteAudio = "mute_audio"
        case muteReasonStr = "mute_reason_str"
        case allowAudioEditing = "allow_audio_editing"
        case showMutedAudioToast = "show_muted_audio_toast"
    }
}

// MARK: - CoauthorProducer
struct CoauthorProducer: Codable {
    let pk: Int
    let pkID, fullName: String
    let isPrivate: Bool
    let strongID, username: String
    let isVerified: Bool
    let profilePicID: String?
    let profilePicURL: String
    let fbidV2: String?
    let friendshipStatus: CoauthorProducerFriendshipStatus?

    enum CodingKeys: String, CodingKey {
        case pk
        case pkID = "pk_id"
        case fullName = "full_name"
        case isPrivate = "is_private"
        case strongID = "strong_id__"
        case username
        case isVerified = "is_verified"
        case profilePicID = "profile_pic_id"
        case profilePicURL = "profile_pic_url"
        case fbidV2 = "fbid_v2"
        case friendshipStatus = "friendship_status"
    }
}

// MARK: - CoauthorProducerFriendshipStatus
struct CoauthorProducerFriendshipStatus: Codable {
    let following, followedBy, blocking, muting: Bool
    let isPrivate, incomingRequest, outgoingRequest, isBestie: Bool
    let isRestricted, isFeedFavorite: Bool

    enum CodingKeys: String, CodingKey {
        case following
        case followedBy = "followed_by"
        case blocking, muting
        case isPrivate = "is_private"
        case incomingRequest = "incoming_request"
        case outgoingRequest = "outgoing_request"
        case isBestie = "is_bestie"
        case isRestricted = "is_restricted"
        case isFeedFavorite = "is_feed_favorite"
    }
}

// MARK: - OriginalSoundInfo
struct OriginalSoundInfo: Codable {
    let audioAssetID: Int
    let musicCanonicalID: JSONNull?
    let progressiveDownloadURL: String
    let durationInMS: Int
    let dashManifest: String
    let igArtist: CoauthorProducer
    let shouldMuteAudio, hideRemixing: Bool
    let originalMediaID: Double
    let timeCreated: Int
    let originalAudioTitle: String
    let consumptionInfo: ConsumptionInfo
    let canRemixBeSharedToFb: Bool
    let formattedClipsMediaCount: JSONNull?
    let allowCreatorToRename: Bool
    let audioParts: [JSONAny]
    let isExplicit: Bool
    let originalAudioSubtype: OriginalAudioSubtype
    let isAudioAutomaticallyAttributed, isReuseDisabled, isXpostFromFb: Bool
    let xpostFbCreatorInfo: JSONNull?
    let isOriginalAudioDownloadEligible: Bool
    let trendRank: JSONNull?
    let audioFilterInfos: [JSONAny]
    let oaOwnerIsMusicArtist: Bool

    enum CodingKeys: String, CodingKey {
        case audioAssetID = "audio_asset_id"
        case musicCanonicalID = "music_canonical_id"
        case progressiveDownloadURL = "progressive_download_url"
        case durationInMS = "duration_in_ms"
        case dashManifest = "dash_manifest"
        case igArtist = "ig_artist"
        case shouldMuteAudio = "should_mute_audio"
        case hideRemixing = "hide_remixing"
        case originalMediaID = "original_media_id"
        case timeCreated = "time_created"
        case originalAudioTitle = "original_audio_title"
        case consumptionInfo = "consumption_info"
        case canRemixBeSharedToFb = "can_remix_be_shared_to_fb"
        case formattedClipsMediaCount = "formatted_clips_media_count"
        case allowCreatorToRename = "allow_creator_to_rename"
        case audioParts = "audio_parts"
        case isExplicit = "is_explicit"
        case originalAudioSubtype = "original_audio_subtype"
        case isAudioAutomaticallyAttributed = "is_audio_automatically_attributed"
        case isReuseDisabled = "is_reuse_disabled"
        case isXpostFromFb = "is_xpost_from_fb"
        case xpostFbCreatorInfo = "xpost_fb_creator_info"
        case isOriginalAudioDownloadEligible = "is_original_audio_download_eligible"
        case trendRank = "trend_rank"
        case audioFilterInfos = "audio_filter_infos"
        case oaOwnerIsMusicArtist = "oa_owner_is_music_artist"
    }
}

// MARK: - ConsumptionInfo
struct ConsumptionInfo: Codable {
    let isBookmarked: Bool
    let shouldMuteAudioReason: String
    let isTrendingInClips: Bool
    let shouldMuteAudioReasonType, displayMediaID: JSONNull?

    enum CodingKeys: String, CodingKey {
        case isBookmarked = "is_bookmarked"
        case shouldMuteAudioReason = "should_mute_audio_reason"
        case isTrendingInClips = "is_trending_in_clips"
        case shouldMuteAudioReasonType = "should_mute_audio_reason_type"
        case displayMediaID = "display_media_id"
    }
}

enum OriginalAudioSubtype: String, Codable {
    case originalAudioSubtypeDefault = "default"
}

// MARK: - ReusableTextInfo
struct ReusableTextInfo: Codable {
    let id: Double
    let text: String
    let startTimeMS: Int
    let endTimeMS, width, height, offsetX: Double
    let offsetY: Double
    let zIndex, rotationDegree: Int
    let scale: Double
    let alignment: String
    let colors: [Color]
    let textFormatType: String
    let fontSize: Double
    let textEmphasisMode: String
    let isAnimated: Int

    enum CodingKeys: String, CodingKey {
        case id, text
        case startTimeMS = "start_time_ms"
        case endTimeMS = "end_time_ms"
        case width, height
        case offsetX = "offset_x"
        case offsetY = "offset_y"
        case zIndex = "z_index"
        case rotationDegree = "rotation_degree"
        case scale, alignment, colors
        case textFormatType = "text_format_type"
        case fontSize = "font_size"
        case textEmphasisMode = "text_emphasis_mode"
        case isAnimated = "is_animated"
    }
}

// MARK: - Color
struct Color: Codable {
    let count: Int
    let hexRGBAColor: String

    enum CodingKeys: String, CodingKey {
        case count
        case hexRGBAColor = "hex_rgba_color"
    }
}

// MARK: - TemplateInfo
struct TemplateInfo: Codable {
    let segmentsInfo: [SegmentsInfo]
    let templateClipsMediaID: Double
    let minNumSegments: Int
    let attributionInfo: AttributionInfo
    let transitionEffectsInfo: JSONNull?
    let effectsInfo: EffectsInfo
    let timedTextsInfo, smartTemplateInfo, timedStickersInfo, reusableMediaAssetsInfo: JSONNull?

    enum CodingKeys: String, CodingKey {
        case segmentsInfo = "segments_info"
        case templateClipsMediaID = "template_clips_media_id"
        case minNumSegments = "min_num_segments"
        case attributionInfo = "attribution_info"
        case transitionEffectsInfo = "transition_effects_info"
        case effectsInfo = "effects_info"
        case timedTextsInfo = "timed_texts_info"
        case smartTemplateInfo = "smart_template_info"
        case timedStickersInfo = "timed_stickers_info"
        case reusableMediaAssetsInfo = "reusable_media_assets_info"
    }
}

// MARK: - AttributionInfo
struct AttributionInfo: Codable {
    let ownerUsername, templateMediaID: String

    enum CodingKeys: String, CodingKey {
        case ownerUsername = "owner_username"
        case templateMediaID = "template_media_id"
    }
}

// MARK: - EffectsInfo
struct EffectsInfo: Codable {
    let segmentEffectsInfo: [JSONAny]
    let overallEffectID: JSONNull?

    enum CodingKeys: String, CodingKey {
        case segmentEffectsInfo = "segment_effects_info"
        case overallEffectID = "overall_effect_id"
    }
}

// MARK: - SegmentsInfo
struct SegmentsInfo: Codable {
    let durationInMS: Int
    let reusableTemplateMediaAssetStartTimeMS, reusableTemplateMediaAssetEndTimeMS: JSONNull?

    enum CodingKeys: String, CodingKey {
        case durationInMS = "duration_in_ms"
        case reusableTemplateMediaAssetStartTimeMS = "reusable_template_media_asset_start_time_ms"
        case reusableTemplateMediaAssetEndTimeMS = "reusable_template_media_asset_end_time_ms"
    }
}

// MARK: - CommentInformTreatment
struct CommentInformTreatment: Codable {
    let shouldHaveInformTreatment: Bool
    let text: String
    let url, actionType: JSONNull?

    enum CodingKeys: String, CodingKey {
        case shouldHaveInformTreatment = "should_have_inform_treatment"
        case text, url
        case actionType = "action_type"
    }
}

enum CommercialityStatus: String, Codable {
    case notCommercial = "not_commercial"
}

// MARK: - CreativeConfig
struct CreativeConfig: Codable {
    let captureType: String
    let effectIDS: [Int]?
    let creationToolInfo: [CreationToolInfo]
    let effectConfigs: [EffectConfig]?

    enum CodingKeys: String, CodingKey {
        case captureType = "capture_type"
        case effectIDS = "effect_ids"
        case creationToolInfo = "creation_tool_info"
        case effectConfigs = "effect_configs"
    }
}

// MARK: - CreationToolInfo
struct CreationToolInfo: Codable {
    let cameraTool, durationSelectorSeconds, speedSelector: Int
    let colorFilters: String
    let appearanceEffect, timerSelectorSeconds: Int

    enum CodingKeys: String, CodingKey {
        case cameraTool = "camera_tool"
        case durationSelectorSeconds = "duration_selector_seconds"
        case speedSelector = "speed_selector"
        case colorFilters = "color_filters"
        case appearanceEffect = "appearance_effect"
        case timerSelectorSeconds = "timer_selector_seconds"
    }
}

// MARK: - EffectConfig
struct EffectConfig: Codable {
    let name, id: String
    let failureReason, failureCode: JSONNull?
    let isCreativeTool: Bool
    let gatekeeper: JSONNull?
    let attributionUserID: String
    let attributionUser: AttributionUser
    let gatelogic: JSONNull?
    let saveStatus: String
    let effectActions: [String]
    let isSpotRecognitionEffect, isSpotEffect: Bool
    let thumbnailImage: ThumbnailImage
    let effectActionSheet: EffectActionSheet
    let devicePosition, fanClub: JSONNull?
    let isAgeRestricted: Bool
    let formattedClipsMediaCount, effectID, iconURL, title: JSONNull?
    let reel: JSONNull?

    enum CodingKeys: String, CodingKey {
        case name, id
        case failureReason = "failure_reason"
        case failureCode = "failure_code"
        case isCreativeTool = "is_creative_tool"
        case gatekeeper
        case attributionUserID = "attribution_user_id"
        case attributionUser = "attribution_user"
        case gatelogic
        case saveStatus = "save_status"
        case effectActions = "effect_actions"
        case isSpotRecognitionEffect = "is_spot_recognition_effect"
        case isSpotEffect = "is_spot_effect"
        case thumbnailImage = "thumbnail_image"
        case effectActionSheet = "effect_action_sheet"
        case devicePosition = "device_position"
        case fanClub = "fan_club"
        case isAgeRestricted = "is_age_restricted"
        case formattedClipsMediaCount = "formatted_clips_media_count"
        case effectID = "effect_id"
        case iconURL = "icon_url"
        case title, reel
    }
}

// MARK: - AttributionUser
struct AttributionUser: Codable {
    let instagramUserID, username: String
    let profilePicture: ThumbnailImage

    enum CodingKeys: String, CodingKey {
        case instagramUserID = "instagram_user_id"
        case username
        case profilePicture = "profile_picture"
    }
}

// MARK: - ThumbnailImage
struct ThumbnailImage: Codable {
    let uri: String
}

// MARK: - EffectActionSheet
struct EffectActionSheet: Codable {
    let primaryActions, secondaryActions: [String]

    enum CodingKeys: String, CodingKey {
        case primaryActions = "primary_actions"
        case secondaryActions = "secondary_actions"
    }
}

enum Crosspost: String, Codable {
    case fb = "FB"
    case ig = "IG"
}

// MARK: - Tags
struct Tags: Codable {
    let tagsIn: [In]

    enum CodingKeys: String, CodingKey {
        case tagsIn = "in"
    }
}

// MARK: - In
struct In: Codable {
    let user: CoauthorProducer
    let position: [Double]
    let startTimeInVideoInSEC, durationInVideoInSEC: JSONNull?
    let showCategoryOfUser: Bool?
    let categories: [String]?

    enum CodingKeys: String, CodingKey {
        case user, position
        case startTimeInVideoInSEC = "start_time_in_video_in_sec"
        case durationInVideoInSEC = "duration_in_video_in_sec"
        case showCategoryOfUser = "show_category_of_user"
        case categories
    }
}

// MARK: - FundraiserTag
struct FundraiserTag: Codable {
    let hasStandaloneFundraiser: Bool

    enum CodingKeys: String, CodingKey {
        case hasStandaloneFundraiser = "has_standalone_fundraiser"
    }
}

// MARK: - ImageVersions2
struct ImageVersions2: Codable {
    let candidates: [FirstFrame]
    let additionalCandidates: AdditionalCandidates
    let smartThumbnailEnabled: Bool
    let scrubberSpritesheetInfoCandidates: ScrubberSpritesheetInfoCandidates?

    enum CodingKeys: String, CodingKey {
        case candidates
        case additionalCandidates = "additional_candidates"
        case smartThumbnailEnabled = "smart_thumbnail_enabled"
        case scrubberSpritesheetInfoCandidates = "scrubber_spritesheet_info_candidates"
    }
}

// MARK: - AdditionalCandidates
struct AdditionalCandidates: Codable {
    let igtvFirstFrame, firstFrame: FirstFrame
    let smartFrame: JSONNull?

    enum CodingKeys: String, CodingKey {
        case igtvFirstFrame = "igtv_first_frame"
        case firstFrame = "first_frame"
        case smartFrame = "smart_frame"
    }
}

// MARK: - FirstFrame
struct FirstFrame: Codable {
    let width, height: Int
    let url: String
    let scansProfile: ScansProfile

    enum CodingKeys: String, CodingKey {
        case width, height, url
        case scansProfile = "scans_profile"
    }
}

enum ScansProfile: String, Codable {
    case e15 = "e15"
}

// MARK: - ScrubberSpritesheetInfoCandidates
struct ScrubberSpritesheetInfoCandidates: Codable {
    let scrubberSpritesheetInfoCandidatesDefault: Default

    enum CodingKeys: String, CodingKey {
        case scrubberSpritesheetInfoCandidatesDefault = "default"
    }
}

// MARK: - Default
struct Default: Codable {
    let videoLength: Double
    let thumbnailWidth, thumbnailHeight: Int
    let thumbnailDuration: Double
    let spriteUrls: [String]
    let thumbnailsPerRow, totalThumbnailNumPerSprite, maxThumbnailsPerSprite, spriteWidth: Int
    let spriteHeight, renderedWidth, fileSizeKB: Int

    enum CodingKeys: String, CodingKey {
        case videoLength = "video_length"
        case thumbnailWidth = "thumbnail_width"
        case thumbnailHeight = "thumbnail_height"
        case thumbnailDuration = "thumbnail_duration"
        case spriteUrls = "sprite_urls"
        case thumbnailsPerRow = "thumbnails_per_row"
        case totalThumbnailNumPerSprite = "total_thumbnail_num_per_sprite"
        case maxThumbnailsPerSprite = "max_thumbnails_per_sprite"
        case spriteWidth = "sprite_width"
        case spriteHeight = "sprite_height"
        case renderedWidth = "rendered_width"
        case fileSizeKB = "file_size_kb"
    }
}

enum IntegrityReviewDecision: String, Codable {
    case pending = "pending"
}

// MARK: - Location
struct Location: Codable {
    let pk: Int
    let shortName: String
    let facebookPlacesID: Int
    let externalSource: ExternalSource
    let name, address, city: String
    let hasViewerSaved: Bool
    let lng, lat: Double
    let isEligibleForGuides: Bool

    enum CodingKeys: String, CodingKey {
        case pk
        case shortName = "short_name"
        case facebookPlacesID = "facebook_places_id"
        case externalSource = "external_source"
        case name, address, city
        case hasViewerSaved = "has_viewer_saved"
        case lng, lat
        case isEligibleForGuides = "is_eligible_for_guides"
    }
}

enum ExternalSource: String, Codable {
    case facebookPlaces = "facebook_places"
}

// MARK: - MediaAppreciationSettings
struct MediaAppreciationSettings: Codable {
    let mediaGiftingState: MediaGiftingState
    let giftCountVisibility: GiftCountVisibility

    enum CodingKeys: String, CodingKey {
        case mediaGiftingState = "media_gifting_state"
        case giftCountVisibility = "gift_count_visibility"
    }
}

enum GiftCountVisibility: String, Codable {
    case enabled = "enabled"
}

enum MediaGiftingState: String, Codable {
    case notApplicable = "not_applicable"
}

// MARK: - MediaCroppingInfo
struct MediaCroppingInfo: Codable {
    let squareCrop: SquareCrop

    enum CodingKeys: String, CodingKey {
        case squareCrop = "square_crop"
    }
}

// MARK: - SquareCrop
struct SquareCrop: Codable {
    let cropLeft, cropRight, cropTop, cropBottom: Double

    enum CodingKeys: String, CodingKey {
        case cropLeft = "crop_left"
        case cropRight = "crop_right"
        case cropTop = "crop_top"
        case cropBottom = "crop_bottom"
    }
}

// MARK: - PreviewComment
struct PreviewComment: Codable {
    let pk: String
    let userID: Int
    let user: CoauthorProducer
    let type: Int
    let text: String
    let didReportAsSpam: Bool
    let createdAt, createdAtUTC: Int
    let contentType: ContentType
    let status: Status
    let bitFlags: Int
    let shareEnabled, isRankedComment, isCovered: Bool
    let privateReplyStatus: Int
    let parentCommentID: String?
    let mediaID: Double
    let hasTranslation: Bool?

    enum CodingKeys: String, CodingKey {
        case pk
        case userID = "user_id"
        case user, type, text
        case didReportAsSpam = "did_report_as_spam"
        case createdAt = "created_at"
        case createdAtUTC = "created_at_utc"
        case contentType = "content_type"
        case status
        case bitFlags = "bit_flags"
        case shareEnabled = "share_enabled"
        case isRankedComment = "is_ranked_comment"
        case isCovered = "is_covered"
        case privateReplyStatus = "private_reply_status"
        case parentCommentID = "parent_comment_id"
        case mediaID = "media_id"
        case hasTranslation = "has_translation"
    }
}

// MARK: - SharingFrictionInfo
struct SharingFrictionInfo: Codable {
    let shouldHaveSharingFriction: Bool
    let bloksAppURL, sharingFrictionPayload: JSONNull?

    enum CodingKeys: String, CodingKey {
        case shouldHaveSharingFriction = "should_have_sharing_friction"
        case bloksAppURL = "bloks_app_url"
        case sharingFrictionPayload = "sharing_friction_payload"
    }
}

// MARK: - VideoVersion
struct VideoVersion: Codable {
    let type, width, height: Int
    let url: String
    let id: String
}

enum LayoutType: String, Codable {
    case dynamicGrid = "dynamic_grid"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
