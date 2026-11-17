.class public Lcom/fusepowered/al/sdk/AppLovinAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/fusepowered/al/sdk/AppLovinAdSize;

.field private final b:Lcom/fusepowered/al/sdk/AppLovinAdType;

.field private final c:J

.field protected final videoFilename:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->a:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    iput-object p2, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->b:Lcom/fusepowered/al/sdk/AppLovinAdType;

    iput-object p3, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->videoFilename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->c:J

    return-void
.end method


# virtual methods
.method public getAdIdNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->c:J

    return-wide v0
.end method

.method public getSize()Lcom/fusepowered/al/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->a:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getType()Lcom/fusepowered/al/sdk/AppLovinAdType;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->b:Lcom/fusepowered/al/sdk/AppLovinAdType;

    return-object v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/sdk/AppLovinAd;->videoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/cb;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
