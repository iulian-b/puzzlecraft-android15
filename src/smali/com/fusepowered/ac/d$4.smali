.class Lcom/fusepowered/ac/d$4;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColonyAd;

.field final synthetic b:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fusepowered/ac/d$4;->b:Lcom/fusepowered/ac/d;

    iput-object p3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/ac/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/d$4;->b:Lcom/fusepowered/ac/d;

    const-string v1, "native_start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v3, v3, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v3, v3, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":false}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/d$4;->b:Lcom/fusepowered/ac/d;

    const-string v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v3, v3, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v3, v3, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    iget-boolean v3, v3, Lcom/fusepowered/ac/AdColonyAd;->r:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$4;->a:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    goto :goto_0
.end method
