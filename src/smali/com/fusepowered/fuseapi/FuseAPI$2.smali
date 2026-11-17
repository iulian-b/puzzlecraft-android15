.class final Lcom/fusepowered/fuseapi/FuseAPI$2;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Lcom/fusepowered/ads/AdManager$AdTrackingReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->startAdManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAdClicked(IIFII)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F
    .param p4, "assetId"    # I
    .param p5, "campaignId"    # I

    .prologue
    .line 966
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 968
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_CLICK:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    if-lez p4, :cond_0

    .line 975
    const-string v1, "asset_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_0
    if-lez p5, :cond_1

    .line 978
    const-string v1, "campaign_id"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :cond_1
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 981
    return-void
.end method

.method public reportAdClosed(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 998
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_CLOSE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1007
    return-void
.end method

.method public reportAdCompleted(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 985
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 986
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 987
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_COMPLETE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 994
    return-void
.end method

.method public reportAdDisplayRequested(II)V
    .locals 0
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I

    .prologue
    .line 941
    return-void
.end method

.method public reportAdProviderAskedToLoad(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 1112
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1114
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_REQUEST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1120
    return-void
.end method

.method public reportAdProviderNotReadyToLoad(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 1099
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1101
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_NOT_READY:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1108
    return-void
.end method

.method public reportAdSkipped(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 1053
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1055
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_VIDEO_SKIP:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1062
    return-void
.end method

.method public reportAdViewed(IIIII)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "offerId"    # I
    .param p4, "assetId"    # I
    .param p5, "campaignId"    # I

    .prologue
    .line 945
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 946
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 947
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    if-lez p3, :cond_0

    .line 953
    const-string v1, "offer_id"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_0
    if-lez p4, :cond_1

    .line 956
    const-string v1, "asset_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_1
    if-lez p5, :cond_2

    .line 959
    const-string v1, "campaign_id"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_2
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 962
    return-void
.end method

.method public reportCheckAdFail(IFLcom/fusepowered/util/FuseCheckAdError;)V
    .locals 4
    .param p1, "adZoneId"    # I
    .param p2, "duration"    # F
    .param p3, "error"    # Lcom/fusepowered/util/FuseCheckAdError;

    .prologue
    .line 1039
    const-string v1, "FILLRATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHECK AD FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1041
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1042
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_CHECKAD_FAIL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string v1, "error"

    iget v2, p3, Lcom/fusepowered/util/FuseCheckAdError;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string v1, "seconds"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string v1, "zone_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1049
    return-void
.end method

.method public reportCheckAdSuccess(IF)V
    .locals 4
    .param p1, "adZoneId"    # I
    .param p2, "duration"    # F

    .prologue
    .line 1026
    const-string v1, "FILLRATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHECK AD SUCCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1029
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_CHECKAD_SUCCESS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v1, "seconds"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v1, "zone_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1035
    return-void
.end method

.method public reportOfferAccepted(ILcom/fusepowered/OfferObject;F)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;
    .param p3, "duration"    # F

    .prologue
    .line 1157
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT offer accepted"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1160
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_OFFER_CLICK:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v1, "ad_zone_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->adZoneID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget v1, p2, Lcom/fusepowered/OfferObject;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 1167
    const-string v1, "content_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->contentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_0
    const-string v1, "offer_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1171
    return-void
.end method

.method public reportOfferRejected(ILcom/fusepowered/OfferObject;F)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;
    .param p3, "duration"    # F

    .prologue
    .line 1175
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT offer rejected"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_OFFER_CANCEL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string v1, "ad_zone_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->adZoneID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget v1, p2, Lcom/fusepowered/OfferObject;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 1185
    const-string v1, "content_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->contentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_0
    const-string v1, "offer_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1189
    return-void
.end method

.method public reportOfferViewed(ILcom/fusepowered/OfferObject;)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "offer"    # Lcom/fusepowered/OfferObject;

    .prologue
    .line 1140
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT offer viewed"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_OFFER_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-string v1, "ad_zone_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->adZoneID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget v1, p2, Lcom/fusepowered/OfferObject;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 1149
    const-string v1, "content_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->contentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    :cond_0
    const-string v1, "offer_id"

    iget v2, p2, Lcom/fusepowered/OfferObject;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1153
    return-void
.end method

.method public reportProviderLoadFail(IIFLcom/fusepowered/util/FuseProviderError;)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F
    .param p4, "error"    # Lcom/fusepowered/util/FuseProviderError;

    .prologue
    .line 1080
    const-string v1, "FILLRATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider load FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1083
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_PROVIDER_FAILED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    if-nez p4, :cond_0

    .line 1087
    const-string v1, "error"

    sget-object v2, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    iget v2, v2, Lcom/fusepowered/util/FuseProviderError;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    :goto_0
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1095
    return-void

    .line 1089
    :cond_0
    const-string v1, "error"

    iget v2, p4, Lcom/fusepowered/util/FuseProviderError;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reportProviderLoadSuccess(IIF)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F

    .prologue
    .line 1066
    const-string v1, "FILLRATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider load SUCCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1068
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1069
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_PROVIDER_LOADED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1076
    return-void
.end method

.method public reportRewardedVideoCompleted(IILcom/fusepowered/RewardedObject;F)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "adZoneId"    # I
    .param p3, "rewardedObject"    # Lcom/fusepowered/RewardedObject;
    .param p4, "duration"    # F

    .prologue
    .line 1124
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1126
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REWARDED_VIDEO_COMPLETED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string v1, "seconds"

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v2, "account_id"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$300()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string v1, "item_id"

    iget v2, p3, Lcom/fusepowered/RewardedObject;->itemId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string v1, "amount"

    iget v2, p3, Lcom/fusepowered/RewardedObject;->rewardAmount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1136
    return-void

    .line 1132
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$300()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public reportShowAdFailed(IIFLcom/fusepowered/util/FuseProviderError;)V
    .locals 4
    .param p1, "provider"    # I
    .param p2, "adZoneId"    # I
    .param p3, "duration"    # F
    .param p4, "error"    # Lcom/fusepowered/util/FuseProviderError;

    .prologue
    .line 1012
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1014
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NETWORK_AD_VIEW_FAILED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v1, "error"

    iget v2, p4, Lcom/fusepowered/util/FuseProviderError;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v1, "ad_network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v1, "zone_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1022
    return-void
.end method

.method public reportUserAcceptedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V
    .locals 4
    .param p1, "rewardedObject"    # Lcom/fusepowered/RewardedObject;
    .param p2, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p3, "duration"    # F

    .prologue
    .line 1193
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT rewarded video accepted"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1196
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REWARDED_OFFER_ACCEPTED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v1, "ad_network"

    iget v2, p2, Lcom/fusepowered/ads/adapters/AdAdapter;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v1, "zone_id"

    iget v2, p1, Lcom/fusepowered/RewardedObject;->zoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1203
    return-void
.end method

.method public reportUserDeclinedRewardedAd(Lcom/fusepowered/RewardedObject;Lcom/fusepowered/ads/adapters/AdAdapter;F)V
    .locals 4
    .param p1, "rewardedObject"    # Lcom/fusepowered/RewardedObject;
    .param p2, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p3, "duration"    # F

    .prologue
    .line 1207
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT rewarded video accepted"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1210
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REWARDED_OFFER_DECLINED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string v1, "seconds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string v1, "ad_network"

    iget v2, p2, Lcom/fusepowered/ads/adapters/AdAdapter;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string v1, "zone_id"

    iget v2, p1, Lcom/fusepowered/RewardedObject;->zoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1217
    return-void
.end method

.method public reportVastError(II)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "error"    # I

    .prologue
    .line 1221
    const-string v1, "AdTrackingReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REPORT vast error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1224
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_VAST_ERROR:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const-string v1, "provider"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string v1, "error"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1230
    return-void
.end method

.method public reportVastProgress(II)V
    .locals 4
    .param p1, "providerId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 1234
    const-string v1, "AdTrackingReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REPORT vast progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1237
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_VAST_PROGRESS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v1, "provider"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string v1, "progress"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1243
    return-void
.end method

.method public reportVastSkip(I)V
    .locals 4
    .param p1, "providerId"    # I

    .prologue
    .line 1247
    const-string v1, "AdTrackingReporter"

    const-string v2, "REPORT vast skip: "

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200()V

    .line 1249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1250
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_VAST_SKIP:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string v1, "provider"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->access$100()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1255
    return-void
.end method
