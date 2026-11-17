.class public Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;
.super Lcom/fusepowered/al/sdk/AppLovinAd;


# instance fields
.field private final a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:Lcom/fusepowered/al/impl/adview/t;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;Lcom/fusepowered/al/impl/adview/t;FFIJLjava/lang/String;)V
    .locals 8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p10

    invoke-direct/range {v2 .. v7}, Lcom/fusepowered/al/sdk/AppLovinAd;-><init>(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    iput p7, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->d:F

    move/from16 v0, p9

    iput v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->f:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->g:Lcom/fusepowered/al/impl/adview/t;

    move/from16 v0, p8

    iput v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->e:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;Lcom/fusepowered/al/impl/adview/t;FFIJLjava/lang/String;Lcom/fusepowered/al/impl/sdk/c;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;-><init>(Ljava/lang/String;Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;Lcom/fusepowered/al/impl/adview/t;FFIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getAdIdNumber()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getType()Lcom/fusepowered/al/sdk/AppLovinAdType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getType()Lcom/fusepowered/al/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/al/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getSize()Lcom/fusepowered/al/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getSize()Lcom/fusepowered/al/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getHtmlSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getClCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseStyle()Lcom/fusepowered/al/impl/adview/t;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->g:Lcom/fusepowered/al/impl/adview/t;

    return-object v0
.end method

.method public getCountdownLength()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->f:I

    return v0
.end method

.method public getHtmlSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoststitialCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->e:F

    return v0
.end method

.method public getTarget()Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->a:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    return-object v0
.end method

.method public getVideoCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->d:F

    return v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->videoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getAdIdNumber()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
