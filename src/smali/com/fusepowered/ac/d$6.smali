.class Lcom/fusepowered/ac/d$6;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->a(ZLcom/fusepowered/ac/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/fusepowered/ac/AdColonyAd;

.field final synthetic d:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;ILcom/fusepowered/ac/AdColonyAd;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/fusepowered/ac/d$6;->d:Lcom/fusepowered/ac/d;

    iput-object p3, p0, Lcom/fusepowered/ac/d$6;->a:Ljava/lang/String;

    iput p4, p0, Lcom/fusepowered/ac/d$6;->b:I

    iput-object p5, p0, Lcom/fusepowered/ac/d$6;->c:Lcom/fusepowered/ac/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 197
    const-string v1, "v4vc_name"

    iget-object v2, p0, Lcom/fusepowered/ac/d$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "v4vc_amount"

    iget v2, p0, Lcom/fusepowered/ac/d$6;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Lcom/fusepowered/ac/d$6;->o:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/fusepowered/ac/d$6;->c:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 200
    return-void
.end method
