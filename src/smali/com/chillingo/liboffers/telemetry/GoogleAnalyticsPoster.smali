.class public Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;
.super Ljava/lang/Object;
.source "GoogleAnalyticsPoster.java"

# interfaces
.implements Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
    scope = .enum Lcom/googlecode/androidannotations/api/Scope;->Singleton:Lcom/googlecode/androidannotations/api/Scope;
.end annotation


# static fields
.field static final GAE_CUSTOM_PROPERTY_INDEX_ADVERTISINGID_AVAILABLE:I = 0xd

.field static final GAE_CUSTOM_PROPERTY_INDEX_APPNAME:I = 0x1

.field static final GAE_CUSTOM_PROPERTY_INDEX_APPVERSION:I = 0x2

.field static final GAE_CUSTOM_PROPERTY_INDEX_CATEGORY:I = 0xb

.field static final GAE_CUSTOM_PROPERTY_INDEX_DISPLAYIMAGE:I = 0x7

.field static final GAE_CUSTOM_PROPERTY_INDEX_DISPLAYINDEX:I = 0x8

.field static final GAE_CUSTOM_PROPERTY_INDEX_EVENTTYPE:I = 0xa

.field static final GAE_CUSTOM_PROPERTY_INDEX_OFFERNAME:I = 0x9

.field static final GAE_CUSTOM_PROPERTY_INDEX_SDK:I = 0x4

.field static final GAE_CUSTOM_PROPERTY_INDEX_SOURCEAPPID:I = 0xc

.field static final GAE_CUSTOM_PROPERTY_INDEX_WEBAPPVERSION:I = 0xe


# instance fields
.field doEvents:Z

.field doPageViews:Z

.field googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field lastUsedEmbedUrl:Ljava/lang/String;

.field tracker:Lcom/google/android/gms/analytics/Tracker;

.field uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    .line 53
    iput-boolean v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    return-void
.end method

.method private logEventForConversion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    .line 274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No source ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No target ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/offer/conversion/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "eventPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 286
    iget-boolean v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    if-eqz v1, :cond_4

    .line 302
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    const-string v3, "offer"

    invoke-virtual {v1, v7, v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    const-string v3, "conversion"

    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v1, v8, p1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 310
    :cond_4
    iget-boolean v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    if-eqz v1, :cond_5

    .line 325
    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "offer"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v3, "conversion"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v3, "offer"

    invoke-virtual {v1, v7, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    const-string v3, "conversion"

    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v1, v8, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 339
    :cond_5
    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "destinationId"    # Ljava/lang/String;
    .param p3, "embedSourceId"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xb

    const/16 v10, 0xa

    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid action parameter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid embedSourceId parameter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    :cond_3
    const/4 v0, 0x0

    .line 215
    .local v0, "destinationIdEncoded":Ljava/lang/String;
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {p3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "embedSourceIdEncoded":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 217
    const-string v5, "UTF-8"

    invoke-static {p2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :cond_4
    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/embed/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "eventPath":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 235
    iget-boolean v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    if-eqz v5, :cond_5

    .line 237
    iget-object v6, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    const-string v7, "embed"

    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v5, v10, p1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 245
    :cond_5
    iget-boolean v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    if-eqz v5, :cond_7

    .line 247
    move-object v4, p3

    .line 249
    .local v4, "label":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 250
    move-object v4, p2

    .line 252
    :cond_6
    iget-object v6, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v7, "embed"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-string v7, "embed"

    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v5, v10, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 264
    .end local v4    # "label":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 265
    return-void

    .line 218
    .end local v2    # "embedSourceIdEncoded":Ljava/lang/String;
    .end local v3    # "eventPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    move-object v2, p3

    .line 221
    .restart local v2    # "embedSourceIdEncoded":Ljava/lang/String;
    move-object v0, p2

    goto/16 :goto_0

    .line 230
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/embed/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "eventPath":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null offer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    if-gez p2, :cond_1

    .line 134
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid category "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_5
    add-int/lit8 v1, p2, 0x1

    .line 143
    .local v1, "finalIndex":I
    const-string v3, "unknown"

    .line 144
    .local v3, "offerName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 145
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_6
    const-string v2, "unknown"

    .line 148
    .local v2, "imageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 149
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getImageName()Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "eventPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 157
    iget-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    if-eqz v4, :cond_8

    .line 164
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    const/16 v6, 0xb

    invoke-virtual {v4, v6, p4}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    const/16 v6, 0xa

    invoke-virtual {v4, v6, p3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    const/16 v6, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 174
    :cond_8
    iget-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    if-eqz v4, :cond_9

    .line 180
    iget-object v5, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v4, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    int-to-long v6, p2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const/16 v6, 0xb

    invoke-virtual {v4, v6, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    const/16 v6, 0xa

    invoke-virtual {v4, v6, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    const/16 v6, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 196
    :cond_9
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public flushEvents()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 516
    return-void
.end method

.method public init(Lcom/chillingo/liboffers/model/OfferConfig;Landroid/content/Context;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .locals 9
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;
    .param p2, "rootContext"    # Landroid/content/Context;
    .param p3, "googleAnalytics"    # Lcom/google/android/gms/analytics/GoogleAnalytics;

    .prologue
    const/4 v8, 0x1

    .line 61
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreamsGoogleEventsEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    .line 62
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreamsGooglePageViewsEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    .line 65
    iget-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    if-nez v4, :cond_0

    .line 119
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 72
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 77
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGoogleAccount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGoogleAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "No google account set in OfferConfig"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGoogleAccount()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "googleAccount":Ljava/lang/String;
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    iput-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 86
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryThrottle()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryThrottle()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getTelemetryThrottle()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/Tracker;->setSampleRate(D)V

    .line 90
    :cond_3
    invoke-static {p2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "appId":Ljava/lang/String;
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/analytics/Tracker;->setAppId(Ljava/lang/String;)V

    .line 95
    move-object v1, v0

    .line 98
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGameName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 99
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getGameName()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_4
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/analytics/Tracker;->setAppName(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&cd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "applicationVersion":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 109
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&cd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/analytics/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 113
    :cond_5
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&cd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/chillingo/liboffers/config/Config;->getSDKString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getWebAppVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getWebAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 116
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&cd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->getWebAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_6
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    goto/16 :goto_0
.end method

.method public isActivatedByOfferConfig(Lcom/chillingo/liboffers/model/OfferConfig;)Z
    .locals 1
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreamsGoogleEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/OfferConfig;->telemetryStreamsGooglePageViewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logActivateEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 362
    const-string v0, "activate"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public logAdvertisingIdAvailabilityEvent()V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/16 v8, 0xd

    .line 478
    iget-object v3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->uuidUtils:Lcom/chillingo/liboffers/utils/UuidUtils;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/utils/UuidUtils;->advertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "idfa":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 482
    .local v0, "advertisingIdAvailable":Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user/availability/advertisingid/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "eventPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 486
    iget-boolean v3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doPageViews:Z

    if-eqz v3, :cond_0

    .line 488
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 494
    :cond_0
    iget-boolean v3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->doEvents:Z

    if-eqz v3, :cond_1

    .line 496
    iget-object v4, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v5, "user"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v5, "availability"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v5, "advertisingid"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 510
    return-void

    .line 480
    .end local v0    # "advertisingIdAvailable":Ljava/lang/Boolean;
    .end local v1    # "eventPath":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 367
    const-string v0, "appstoreopen"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public logCloseEventForGUI()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public logCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 357
    const-string v0, "close"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public logDiplayEventForGUI()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public logDisplayEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 347
    const-string v0, "display"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public logEmbedActivateForFacebook()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no saved lastUsedEmbedUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    const-string v0, "activatefacebook"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public logEmbedActivateForGameId(Ljava/lang/String;)V
    .locals 2
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null gameId param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no saved lastUsedEmbedUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_3
    const-string v0, "activatestore"

    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public logEmbedActivateForTwitter()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no saved lastUsedEmbedUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    const-string v0, "activatetwitter"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public logEmbedActivateForUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null url param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no saved lastUsedEmbedUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_3
    const-string v0, "activateurl"

    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public logEmbedCloseForUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null url param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    .line 424
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public logEmbedOpenForUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null url param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->lastUsedEmbedUrl:Ljava/lang/String;

    .line 415
    const-string v0, "open"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForEmbed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public logInterstitialClickThruEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 390
    const/4 v0, 0x0

    const-string v1, "clickthru"

    const-string v2, "interstitial"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public logInterstitialCloseEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 385
    const/4 v0, 0x0

    const-string v1, "close"

    const-string v2, "interstitial"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public logInterstitialOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 380
    const/4 v0, 0x0

    const-string v1, "open"

    const-string v2, "interstitial"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public logPurchaseConversionEventWithSourceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "&aid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForConversion(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public logReleaseEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 352
    const-string v0, "release"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public logSessionStartEventWithData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "index"    # I

    .prologue
    .line 372
    const-string v0, "webpageopen"

    const-string v1, "offer"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster;->logEventForOffer(Lcom/chillingo/liboffers/model/Offer;ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method
