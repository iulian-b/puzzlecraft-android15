.class public Lcom/apptracker/android/module/AppAd;
.super Ljava/lang/Object;
.source "xb"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic A:Ljava/lang/String; = "fullScreen"

.field private static final synthetic AA:Ljava/lang/String; = "landingUrl"

.field public static final B:I = 0x1

.field private static final synthetic C:Ljava/lang/String; = "positionY"

.field private static final synthetic D:Ljava/lang/String; = "realTimeCloseTracking"

.field private static final synthetic DA:Ljava/lang/String; = "mediaUrl"

.field private static final synthetic F:Ljava/lang/String; = "html"

.field public static final FA:I = 0x0

.field private static final synthetic H:Ljava/lang/String; = "mediaProgress50Url"

.field private static final synthetic HA:Ljava/lang/String; = "keepAspectRatio"

.field private static final synthetic I:Ljava/lang/String; = "maskAlpha"

.field private static final synthetic J:Ljava/lang/String; = "urls"

.field private static final synthetic JA:Ljava/lang/String; = "startingHtml"

.field private static final synthetic K:Ljava/lang/String; = "mediaSkipUrl"

.field private static final synthetic LA:Ljava/lang/String; = "backgroundHtml"

.field private static final synthetic M:Ljava/lang/String; = "displayOnComplete"

.field private static final synthetic N:Ljava/lang/String; = "endingHtml"

.field private static final synthetic O:Ljava/lang/String; = "shouldClickTrack"

.field private static final synthetic Q:Ljava/lang/String; = "mediaProgress25Url"

.field private static final synthetic S:Ljava/lang/String; = "mediaStartUrl"

.field private static final synthetic T:Ljava/lang/String; = "orientation"

.field private static final synthetic U:Ljava/lang/String; = "cache"

.field private static final synthetic Y:Ljava/lang/String; = "w"

.field private static final synthetic bA:Ljava/lang/String; = "positionX"

.field private static final synthetic cA:Ljava/lang/String; = "video"

.field private static final synthetic e:Ljava/lang/String; = "mediaEndUrl"

.field private static final synthetic eA:Ljava/lang/String; = "realTimeClickTracking"

.field private static final synthetic h:Ljava/lang/String; = "closeTrackingUrl"

.field private static final synthetic i:Ljava/lang/String; = "allowMediaNotifier"

.field public static final iA:J = 0x1baf80L

.field private static final synthetic jA:Ljava/lang/String; = "allowSkip"

.field public static final kA:I = 0x2

.field private static final synthetic l:Ljava/lang/String; = "clickTrackingUrl"

.field private static final synthetic m:Ljava/lang/String; = "autoPlay"

.field private static final synthetic mA:Ljava/lang/String; = "h"

.field private static final synthetic o:Ljava/lang/String; = "overlayHtml"

.field private static final synthetic q:J = 0x55421c7d02a90241L

.field private static final synthetic t:Ljava/lang/String; = "mediaProgress75Url"


# instance fields
.field private synthetic BA:Ljava/lang/String;

.field private synthetic CA:Z

.field private synthetic E:I

.field private synthetic EA:I

.field private synthetic G:I

.field private synthetic GA:Z

.field private synthetic IA:Ljava/lang/String;

.field private synthetic KA:I

.field private synthetic L:Ljava/lang/String;

.field private synthetic MA:Ljava/lang/String;

.field private synthetic P:Ljava/lang/String;

.field private synthetic R:Ljava/lang/String;

.field private synthetic V:Ljava/lang/String;

.field private synthetic W:J

.field private synthetic X:Z

.field private synthetic Z:Z

.field private synthetic a:Z

.field private synthetic b:J

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic fA:I

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic j:I

.field private synthetic k:Ljava/lang/String;

.field private synthetic n:Z

.field private synthetic p:Z

.field private synthetic r:Ljava/lang/String;

.field private synthetic s:I

.field private synthetic u:Ljava/lang/String;

.field private synthetic v:Ljava/lang/String;

.field private synthetic w:I

.field private synthetic x:Z

.field private synthetic y:Ljava/lang/String;

.field private synthetic z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 255
    const-wide/32 v0, 0x1baf80

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppAd;->p:Z

    .line 234
    iput-wide v0, p0, Lcom/apptracker/android/module/AppAd;->W:J

    .line 60
    return-void
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x62

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x57

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static createWithJsonData(Lorg/json/JSONObject;)Lcom/apptracker/android/module/AppAd;
    .locals 38
    .param p0, "arg0"    # Lorg/json/JSONObject;

    .prologue
    .line 188
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 39
    const/4 v5, 0x0

    .line 249
    const-string v2, ""

    .line 244
    const/4 v4, 0x0

    .line 106
    const/4 v3, 0x0

    .line 125
    if-nez p0, :cond_0

    .line 84
    const-string v2, "APTr"

    const-string v3, "8\u0018>\u000b/\u000f\u000c\u0003/\u0002\u0011\u00194\u0004\u001f\u000b/\u000b{\r4\u001e{\u0004.\u00067J2\u0004+\u001f/"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x0

    .line 256
    :goto_0
    return-object v2

    .line 243
    :cond_0
    :try_start_0
    const-string v8, "html"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 201
    const-string v2, "html"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v30, v2

    .line 160
    :goto_1
    const-string v2, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 61
    const-string v2, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    .line 17
    :goto_2
    const-string v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 40
    const-string v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    .line 164
    :goto_3
    const-string v2, "displayOnComplete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 260
    const-string v2, "displayOnComplete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const/4 v2, 0x1

    :goto_4
    move/from16 v27, v2

    .line 167
    :goto_5
    const-string v2, "orientation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3
    const-string v2, "orientation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 254
    :goto_6
    const-string v2, "positionX"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 81
    const-string v2, "positionY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    .line 213
    const-string v2, "shouldClickTrack"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    move/from16 v25, v2

    .line 77
    :goto_7
    const-string v2, "realTimeCloseTracking"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    move/from16 v24, v2

    .line 54
    :goto_8
    const-string v2, "realTimeClickTracking"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 239
    :goto_9
    const-string v2, "closeTrackingUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 86
    const-string v2, "fullScreen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    move v3, v2

    .line 29
    :goto_a
    :try_start_1
    const-string v2, "maskAlpha"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move/from16 v22, v2

    .line 219
    :goto_b
    :try_start_2
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v2, "urls"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 225
    const/4 v2, 0x0

    move-object/from16 v21, v4

    move v4, v2

    :goto_c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-lt v2, v5, :cond_12

    .line 250
    const/16 v18, 0x2

    .line 142
    const/16 v17, 0x0

    .line 195
    const/4 v2, 0x1

    const/16 v16, 0x1

    .line 215
    const/4 v15, 0x0

    .line 23
    const/4 v14, 0x0

    .line 104
    const/4 v13, 0x0

    .line 15
    const/4 v12, 0x0

    .line 257
    const/4 v11, 0x0

    .line 79
    const/4 v10, 0x0

    .line 199
    const/4 v9, 0x0

    .line 9
    const/4 v8, 0x0

    .line 56
    const/4 v7, 0x0

    .line 119
    const/4 v6, 0x0

    .line 12
    const/4 v5, 0x0

    .line 49
    const/4 v4, 0x0

    .line 224
    :try_start_3
    const-string v19, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 182
    const-string v19, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 111
    const-string v19, "cache"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 33
    const-string v18, "cache"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 223
    :goto_d
    const-string v18, "allowSkip"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 126
    const-string v17, "allowSkip"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 109
    :goto_e
    const-string v17, "autoPlay"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 153
    const-string v2, "autoPlay"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_14

    const/4 v2, 0x1

    :goto_f
    move/from16 v17, v2

    .line 25
    :goto_10
    const-string v2, "keepAspectRatio"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    const-string v2, "keepAspectRatio"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_15

    const/4 v2, 0x1

    :goto_11
    move/from16 v16, v2

    .line 137
    :cond_1
    const-string v2, "mediaStartUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    const-string v2, "mediaStartUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 198
    :cond_2
    const-string v2, "mediaEndUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    const-string v2, "mediaEndUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 24
    :cond_3
    const-string v2, "mediaSkipUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    const-string v2, "mediaSkipUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    :cond_4
    const-string v2, "mediaUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    const-string v2, "mediaUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    :cond_5
    const-string v2, "backgroundHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    const-string v2, "backgroundHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    :cond_6
    const-string v2, "startingHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    const-string v2, "startingHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    :cond_7
    const-string v2, "overlayHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 38
    const-string v2, "overlayHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    :cond_8
    const-string v2, "endingHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 245
    const-string v2, "endingHtml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    :cond_9
    const-string v2, "mediaProgress25Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    const-string v2, "mediaProgress25Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    :cond_a
    const-string v2, "mediaProgress50Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 236
    const-string v2, "mediaProgress50Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    :cond_b
    const-string v2, "mediaProgress75Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 217
    const-string v2, "mediaProgress75Url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    :cond_c
    const-string v2, "allowMediaNotifier"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 95
    const-string v2, "allowMediaNotifier"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v2

    .line 50
    :goto_12
    if-nez v13, :cond_16

    const/4 v2, 0x0

    .line 110
    :goto_13
    new-instance v4, Lcom/apptracker/android/module/AppAd;

    invoke-direct {v4}, Lcom/apptracker/android/module/AppAd;-><init>()V

    .line 189
    const-wide/16 v36, 0x0

    const/16 v35, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setWidth(I)V

    .line 27
    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setHeight(I)V

    .line 203
    invoke-virtual {v4, v3}, Lcom/apptracker/android/module/AppAd;->setFullScreen(Z)V

    .line 206
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setPositionX(I)V

    .line 37
    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setPositionY(I)V

    .line 85
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setMaskAlpha(F)V

    .line 117
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setShouldClickTrack(Z)V

    .line 129
    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setClickTrackUrls(Ljava/util/HashMap;)V

    .line 64
    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setCloseTrackingUrl(Ljava/lang/String;)V

    .line 41
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setRealTimeCloseTracking(Z)V

    .line 87
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setRealTimeClickTracking(Z)V

    .line 51
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setHtml(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4, v2}, Lcom/apptracker/android/module/AppAd;->setVideo(Z)V

    .line 196
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setCache(I)V

    .line 173
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setMediaStartUrl(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, v15}, Lcom/apptracker/android/module/AppAd;->setMediaEndUrl(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v14}, Lcom/apptracker/android/module/AppAd;->setMediaSkipUrl(Ljava/lang/String;)V

    .line 113
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setAllowSkip(I)V

    .line 72
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setAutoPlay(Z)V

    .line 136
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setKeepAspectRatio(Z)V

    .line 133
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setOrientation(I)V

    .line 19
    invoke-virtual {v4, v13}, Lcom/apptracker/android/module/AppAd;->setMediaUrl(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setMediaLocalPath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, v12}, Lcom/apptracker/android/module/AppAd;->setBackgroundHtml(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v11}, Lcom/apptracker/android/module/AppAd;->setStartingHtml(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4, v10}, Lcom/apptracker/android/module/AppAd;->setOverlayHtml(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4, v9}, Lcom/apptracker/android/module/AppAd;->setEndingHtml(Ljava/lang/String;)V

    .line 4
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/apptracker/android/module/AppAd;->setTimeStamp(J)V

    .line 121
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setLandingUrl(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v8}, Lcom/apptracker/android/module/AppAd;->setMediaProgress25Url(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4, v7}, Lcom/apptracker/android/module/AppAd;->setMediaProgress50Url(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4, v6}, Lcom/apptracker/android/module/AppAd;->setMediaProgress75Url(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4, v5}, Lcom/apptracker/android/module/AppAd;->setAllowMediaNotifier(I)V

    .line 108
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/apptracker/android/module/AppAd;->setDisplayOnComplete(Z)V

    move-object v2, v4

    .line 177
    goto/16 :goto_0

    .line 260
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 213
    :cond_e
    const/4 v2, 0x0

    move/from16 v25, v2

    goto/16 :goto_7

    .line 77
    :cond_f
    const/4 v2, 0x0

    move/from16 v24, v2

    goto/16 :goto_8

    .line 54
    :cond_10
    const/4 v2, 0x0

    move/from16 v23, v2

    goto/16 :goto_9

    .line 86
    :cond_11
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_a

    .line 58
    :catch_0
    move-exception v2

    .line 92
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v22, v2

    goto/16 :goto_b

    .line 36
    :cond_12
    :try_start_4
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 230
    const-string v5, "clickTrackingUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    const-string v5, "landingUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    if-nez v4, :cond_1c

    move-object v5, v2

    .line 141
    :goto_14
    if-eqz v7, :cond_13

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 154
    if-eqz v2, :cond_13

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 20
    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 225
    :cond_13
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object/from16 v21, v5

    goto/16 :goto_c

    .line 221
    :catch_1
    move-exception v2

    .line 253
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m\u000ek\u001dz\u0019Y\u0015z\u0014D\u000fa\u0012J\u001dz\u001d.\u001fa\u0011c\u0013`\u0008.\u000co\u000ez\\i\u0013z\\D/A2K\u0004m\u0019~\u0008g\u0013`A"

    invoke-static {v5}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 153
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 26
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 50
    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_13

    .line 165
    :catch_2
    move-exception v2

    .line 139
    const-string v3, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "8\u0018>\u000b/\u000f\u000c\u0003/\u0002\u0011\u00194\u0004\u001f\u000b/\u000b{\u001c2\u000e>\u0005{\u000b?J+\u000b)\u001e{\r4\u001e{ \u0008%\u0015/#\t>\u001a/\u00034\u0004f"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    goto/16 :goto_12

    :cond_18
    move/from16 v17, v2

    goto/16 :goto_10

    :cond_19
    move/from16 v18, v17

    goto/16 :goto_e

    :cond_1a
    move/from16 v19, v18

    goto/16 :goto_d

    :cond_1b
    move/from16 v19, v17

    move/from16 v20, v18

    move/from16 v17, v16

    move/from16 v18, v2

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    goto/16 :goto_12

    :cond_1c
    move-object/from16 v5, v21

    goto/16 :goto_14

    :cond_1d
    move/from16 v26, v3

    goto/16 :goto_6

    :cond_1e
    move/from16 v27, v5

    goto/16 :goto_5

    :cond_1f
    move/from16 v28, v6

    goto/16 :goto_3

    :cond_20
    move/from16 v29, v7

    goto/16 :goto_2

    :cond_21
    move-object/from16 v30, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public getAllowMediaNotifier()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->EA:I

    return v0
.end method

.method public getAllowSkip()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->s:I

    return v0
.end method

.method public getBackgroundHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->G:I

    return v0
.end method

.method public getCacheExpiry()J
    .locals 2

    .prologue
    .line 396
    iget-wide v0, p0, Lcom/apptracker/android/module/AppAd;->W:J

    return-wide v0
.end method

.method public getClickTrackUrls()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCloseTrackingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getEndingHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->IA:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->E:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskAlpha()F
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->z:F

    return v0
.end method

.method public getMediaEndUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProgress25Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProgress50Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProgress75Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSkipUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->MA:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->j:I

    return v0
.end method

.method public getOverlayHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->KA:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->w:I

    return v0
.end method

.method public getStartingHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/apptracker/android/module/AppAd;->BA:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/apptracker/android/module/AppAd;->b:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/apptracker/android/module/AppAd;->fA:I

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->n:Z

    return v0
.end method

.method public isDisplayOnComplete()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->p:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->x:Z

    return v0
.end method

.method public isKeepAspectRatio()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->a:Z

    return v0
.end method

.method public isRealTimeClickTracking()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->Z:Z

    return v0
.end method

.method public isRealTimeCloseTracking()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->CA:Z

    return v0
.end method

.method public isShouldClickTrack()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->GA:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppAd;->X:Z

    return v0
.end method

.method public setAllowMediaNotifier(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 456
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->EA:I

    .line 466
    return-void
.end method

.method public setAllowSkip(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->s:I

    .line 402
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->n:Z

    .line 308
    return-void
.end method

.method public setBackgroundHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->u:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setCache(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->G:I

    .line 420
    return-void
.end method

.method public setCacheExpirye(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    .line 589
    iput-wide p1, p0, Lcom/apptracker/android/module/AppAd;->W:J

    .line 547
    return-void
.end method

.method public setClickTrackUrls(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "arg0"    # Ljava/util/HashMap;
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
    .line 418
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->g:Ljava/util/HashMap;

    .line 297
    return-void
.end method

.method public setCloseTrackingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->r:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setDisplayOnComplete(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->p:Z

    .line 409
    return-void
.end method

.method public setEndingHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->IA:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->x:Z

    .line 451
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 532
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->E:I

    .line 558
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->c:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setKeepAspectRatio(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->a:Z

    .line 535
    return-void
.end method

.method public setLandingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->f:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setMaskAlpha(F)V
    .locals 0
    .param p1, "arg0"    # F

    .prologue
    .line 292
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->z:F

    .line 440
    return-void
.end method

.method public setMediaEndUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->v:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setMediaLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->k:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setMediaProgress25Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->y:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setMediaProgress50Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->d:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setMediaProgress75Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->V:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setMediaSkipUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->MA:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setMediaStartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->R:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setMediaUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->L:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->j:I

    .line 424
    return-void
.end method

.method public setOverlayHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->P:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setPositionX(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->KA:I

    .line 555
    return-void
.end method

.method public setPositionY(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->w:I

    .line 549
    return-void
.end method

.method public setRealTimeClickTracking(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->Z:Z

    .line 296
    return-void
.end method

.method public setRealTimeCloseTracking(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->CA:Z

    .line 291
    return-void
.end method

.method public setShouldClickTrack(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->GA:Z

    .line 298
    return-void
.end method

.method public setStartingHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/apptracker/android/module/AppAd;->BA:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    .line 596
    iput-wide p1, p0, Lcom/apptracker/android/module/AppAd;->b:J

    .line 592
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/apptracker/android/module/AppAd;->X:Z

    .line 321
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/apptracker/android/module/AppAd;->fA:I

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u001d2\u000e/\u0002f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apptracker/android/module/AppAd;->fA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, "P.\u0014k\u0015i\u0014zA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/apptracker/android/module/AppAd;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, "F{\u001a4\u00192\u001e2\u000552f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/apptracker/android/module/AppAd;->KA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, "\"\\~\u0013}\u0015z\u0015a\u0012WA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/apptracker/android/module/AppAd;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "wJ=\u001f7\u0006\u0008\t)\u000f>\u0004f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppAd;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, "\"\\c\u001d}\u0017O\u0010~\u0014oA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/apptracker/android/module/AppAd;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, "wJ(\u00024\u001f7\u000e\u0018\u00062\t0>)\u000b8\u0001f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppAd;->GA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, "\"\\|\u0019o\u0010Z\u0015c\u0019M\u0010a\u000fk(|\u001dm\u0017g\u0012iA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppAd;->CA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "F{\u0018>\u000b7>2\u0007>)7\u00038\u0001\u000f\u0018:\t0\u00035\rf"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppAd;->Z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "P.\u001fb\u0013}\u0019Z\u000eo\u001fe\u0015`\u001b[\u000ebA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppAd;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "wJ8\u00062\t0>)\u000b8\u0001\u000e\u00187\u0019f"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppAd;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "\"\\m\u001dm\u0014k9v\u000cg\u000ewA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/apptracker/android/module/AppAd;->W:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "F{\u001e2\u0007>9/\u000b6\u001af"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/apptracker/android/module/AppAd;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "P.\u0014z\u0011bA"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/module/AppAd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
