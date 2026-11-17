.class public abstract Lcom/fusepowered/ac/AdColonyAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4


# instance fields
.field f:I

.field g:Ljava/lang/String;

.field h:Lcom/fusepowered/ac/n$y;

.field i:Lcom/fusepowered/ac/n$a;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:D

.field n:D

.field o:I

.field p:Z

.field q:Z

.field r:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->j:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->l:Ljava/lang/String;

    .line 27
    iput-wide v2, p0, Lcom/fusepowered/ac/AdColonyAd;->m:D

    .line 28
    iput-wide v2, p0, Lcom/fusepowered/ac/AdColonyAd;->n:D

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Z)Z
.end method

.method abstract b()Z
.end method

.method b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v2, v1

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 72
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/AdColonyAd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 74
    :cond_3
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fusepowered/ac/d;->h(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    .line 75
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->j()Lcom/fusepowered/ac/n$a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    .line 76
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    .line 76
    goto :goto_2
.end method

.method c()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyAd;->b(Z)Z

    move-result v0

    return v0
.end method

.method public canceled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    iget v1, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableViews()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyAd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->d()I

    move-result v0

    goto :goto_0
.end method

.method abstract isReady()Z
.end method

.method public noFill()Z
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notShown()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shown()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipped()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
