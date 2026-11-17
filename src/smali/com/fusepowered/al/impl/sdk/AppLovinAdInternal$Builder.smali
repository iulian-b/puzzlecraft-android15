.class public Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

.field private c:Lcom/fusepowered/al/sdk/AppLovinAdType;

.field private d:Ljava/lang/String;

.field private e:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

.field private f:Lcom/fusepowered/al/impl/adview/t;

.field private g:F

.field private h:F

.field private i:I

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;
    .locals 14

    new-instance v0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->c:Lcom/fusepowered/al/sdk/AppLovinAdType;

    iget-object v4, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->e:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    iget-object v6, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->f:Lcom/fusepowered/al/impl/adview/t;

    iget v7, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->g:F

    iget v8, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->h:F

    iget v9, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->i:I

    iget-wide v10, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->j:J

    iget-object v12, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->k:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;-><init>(Ljava/lang/String;Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;Lcom/fusepowered/al/impl/adview/t;FFIJLjava/lang/String;Lcom/fusepowered/al/impl/sdk/c;)V

    return-object v0
.end method

.method public setClCode(Ljava/lang/String;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseStyle(Lcom/fusepowered/al/impl/adview/t;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->f:Lcom/fusepowered/al/impl/adview/t;

    return-object p0
.end method

.method public setCountdownLength(I)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->i:I

    return-object p0
.end method

.method public setCurrentAdIdNumber(J)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->j:J

    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setPoststitialCloseDelay(F)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->h:F

    return-object p0
.end method

.method public setSize(Lcom/fusepowered/al/sdk/AppLovinAdSize;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->b:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    return-object p0
.end method

.method public setTarget(Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->e:Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$AdTarget;

    return-object p0
.end method

.method public setType(Lcom/fusepowered/al/sdk/AppLovinAdType;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->c:Lcom/fusepowered/al/sdk/AppLovinAdType;

    return-object p0
.end method

.method public setVideoCloseDelay(F)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->g:F

    return-object p0
.end method

.method public setVideoFilename(Ljava/lang/String;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
