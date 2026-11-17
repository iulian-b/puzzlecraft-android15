.class public final Lcom/fusepowered/ac/AdColonyV4VCAd;
.super Lcom/fusepowered/ac/AdColonyAd;
.source "SourceFile"


# instance fields
.field s:Lcom/fusepowered/ac/AdColonyAdListener;

.field t:Z

.field u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/fusepowered/ac/AdColonyAd;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->t:Z

    .line 25
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    .line 29
    sput-boolean v0, Lcom/fusepowered/ac/a;->u:Z

    .line 30
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 31
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->j:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->k:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->l:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/fusepowered/ac/AdColonyAd;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->t:Z

    .line 25
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    .line 38
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 39
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    .line 40
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->j:Ljava/lang/String;

    .line 41
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->k:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->l:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 191
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "Result"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 197
    sget-boolean v0, Lcom/fusepowered/ac/a;->u:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/fusepowered/ac/ACBActivity;->B:Z

    if-nez v0, :cond_3

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_2
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    .line 204
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    .line 205
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 206
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, ""

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "Confirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/fusepowered/ac/ac;

    invoke-direct {v1, v0, p0}, Lcom/fusepowered/ac/ac;-><init>(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyV4VCAd;)V

    sput-object v1, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v1, Lcom/fusepowered/ac/ad;

    invoke-direct {v1, v0, p0}, Lcom/fusepowered/ac/ad;-><init>(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyV4VCAd;)V

    sput-object v1, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 162
    if-eqz p1, :cond_3

    .line 164
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->b(Lcom/fusepowered/ac/AdColonyV4VCAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdStarted(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 167
    :cond_0
    iput v1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    .line 181
    :goto_0
    iget v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    if-eq v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 185
    :cond_1
    return-void

    .line 171
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    goto :goto_0

    .line 176
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    goto :goto_0
.end method

.method public getRemainingViewsUntilReward()I
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget v0, v0, Lcom/fusepowered/ac/n$aa;->f:I

    .line 115
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v2, v2, Lcom/fusepowered/ac/n$aa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/d;->e(Ljava/lang/String;)I

    move-result v1

    .line 116
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget v0, v0, Lcom/fusepowered/ac/n$aa;->c:I

    goto :goto_0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v0, v0, Lcom/fusepowered/ac/n$aa;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewsPerReward()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget v0, v0, Lcom/fusepowered/ac/n$aa;->f:I

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0}, Lcom/fusepowered/ac/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/d;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sput v2, Lcom/fusepowered/ac/a;->Y:I

    .line 125
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;

    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/ac/AdColonyV4VCAd$1;-><init>(Lcom/fusepowered/ac/AdColonyV4VCAd;Lcom/fusepowered/ac/d;)V

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->f:I

    .line 136
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/fusepowered/ac/AdColonyV4VCAd$2;

    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/ac/AdColonyV4VCAd$2;-><init>(Lcom/fusepowered/ac/AdColonyV4VCAd;Lcom/fusepowered/ac/d;)V

    .line 149
    sput-boolean v2, Lcom/fusepowered/ac/a;->v:Z

    .line 150
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c()Z

    .line 152
    sput-object p0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 153
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyV4VCAd;)V

    .line 155
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->t:Z

    if-eqz v0, :cond_2

    const-string v0, "Confirmation"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c(Z)V

    goto :goto_0
.end method

.method public withConfirmationDialog()Lcom/fusepowered/ac/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/fusepowered/ac/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withConfirmationDialog(Z)Lcom/fusepowered/ac/AdColonyV4VCAd;
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->t:Z

    .line 54
    return-object p0
.end method

.method public withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyV4VCAd;
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ac/AdColonyAdListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    .line 48
    return-object p0
.end method

.method public withResultsDialog()Lcom/fusepowered/ac/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/fusepowered/ac/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withResultsDialog(Z)Lcom/fusepowered/ac/AdColonyV4VCAd;
    .locals 1
    .param p1, "setting"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    .line 60
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd;->u:Z

    sput-boolean v0, Lcom/fusepowered/ac/a;->u:Z

    .line 61
    return-object p0
.end method
