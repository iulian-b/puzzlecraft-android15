.class public Lcom/fusepowered/util/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# instance fields
.field private action:Ljava/lang/String;

.field private attributes:Ljava/lang/String;

.field private displayed:Z

.field private htmlBody:Ljava/lang/String;

.field private id:I

.field public lh:I

.field public lw:I

.field public o:I

.field public ph:I

.field public phoneLandscape:Ljava/lang/String;

.field public phonePortrait:Ljava/lang/String;

.field public pw:I

.field public tabletLandscape:Ljava/lang/String;

.field public tabletPortrait:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fusepowered/util/Ad;->id:I

    return v0
.end method

.method public getScreenAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->attributes:Ljava/lang/String;

    return-object v0
.end method

.method public hasHtmlBody()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDisplayed(Z)V
    .locals 0
    .param p1, "displayed"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    .line 73
    return-void
.end method

.method public setHtmlBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlBody"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/fusepowered/util/Ad;->id:I

    .line 36
    return-void
.end method

.method public setScreenAttributes(Ljava/lang/String;)V
    .locals 0
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->attributes:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Ad;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", htmlBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
