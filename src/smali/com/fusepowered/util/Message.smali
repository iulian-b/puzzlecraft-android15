.class public Lcom/fusepowered/util/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private action:Ljava/lang/String;

.field private actionTitle:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private cancelTitle:Ljava/lang/String;

.field private displayed:Z

.field private id:I

.field private isClicked:Z

.field private isUpgrade:Z

.field private isUrl:I

.field private mandatory:I

.field private max_views:I

.field private showOnView:I

.field private sticky:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sticky"    # I
    .param p3, "max_views"    # I
    .param p4, "showOnView"    # I
    .param p5, "isUrl"    # I
    .param p6, "mandatory"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "action"    # Ljava/lang/String;
    .param p10, "actionTitle"    # Ljava/lang/String;
    .param p11, "cancelTitle"    # Ljava/lang/String;
    .param p12, "displayed"    # Z
    .param p13, "isClicked"    # Z
    .param p14, "isUpgrade"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/fusepowered/util/Message;->id:I

    .line 29
    iput p2, p0, Lcom/fusepowered/util/Message;->sticky:I

    .line 30
    iput p3, p0, Lcom/fusepowered/util/Message;->max_views:I

    .line 31
    iput p4, p0, Lcom/fusepowered/util/Message;->showOnView:I

    .line 32
    iput p5, p0, Lcom/fusepowered/util/Message;->isUrl:I

    .line 33
    iput p6, p0, Lcom/fusepowered/util/Message;->mandatory:I

    .line 34
    iput-object p7, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    .line 37
    iput-object p10, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    .line 38
    iput-object p11, p0, Lcom/fusepowered/util/Message;->cancelTitle:Ljava/lang/String;

    .line 39
    iput-boolean p12, p0, Lcom/fusepowered/util/Message;->displayed:Z

    .line 40
    iput-boolean p13, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    .line 41
    iput-boolean p14, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fusepowered/util/Message;->cancelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fusepowered/util/Message;->id:I

    return v0
.end method

.method public getIsUpgrade()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    return v0
.end method

.method public getIsUrl()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fusepowered/util/Message;->isUrl:I

    return v0
.end method

.method public getMandatory()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/fusepowered/util/Message;->mandatory:I

    return v0
.end method

.method public getMax_views()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fusepowered/util/Message;->max_views:I

    return v0
.end method

.method public getShowOnView()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/fusepowered/util/Message;->showOnView:I

    return v0
.end method

.method public getSticky()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fusepowered/util/Message;->sticky:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    return v0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->displayed:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setActionTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionTitle"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCancelTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelTitle"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/util/Message;->cancelTitle:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setClicked(Z)V
    .locals 0
    .param p1, "isClicked"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    .line 129
    return-void
.end method

.method public setDisplayed(Z)V
    .locals 0
    .param p1, "displayed"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->displayed:Z

    .line 93
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/fusepowered/util/Message;->id:I

    .line 49
    return-void
.end method

.method public setIsUpgrade(Z)V
    .locals 0
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    .line 141
    return-void
.end method

.method public setIsUrl(I)V
    .locals 0
    .param p1, "isUrl"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/fusepowered/util/Message;->isUrl:I

    .line 113
    return-void
.end method

.method public setMandatory(I)V
    .locals 0
    .param p1, "mandatory"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/fusepowered/util/Message;->mandatory:I

    .line 121
    return-void
.end method

.method public setMax_views(I)V
    .locals 0
    .param p1, "max_views"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/fusepowered/util/Message;->max_views:I

    .line 137
    return-void
.end method

.method public setShowOnView(I)V
    .locals 0
    .param p1, "showOnView"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fusepowered/util/Message;->showOnView:I

    .line 61
    return-void
.end method

.method public setSticky(I)V
    .locals 0
    .param p1, "sticky"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fusepowered/util/Message;->sticky:I

    .line 55
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Message;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sticky="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->sticky:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max_views="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->max_views:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showOnView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->showOnView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->isUrl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mandatory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->mandatory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actionTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancelTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->cancelTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Message;->displayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isClicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
