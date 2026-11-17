.class Lcom/fusepowered/ac/d$8;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/fusepowered/ac/AdColonyAd;

.field final synthetic d:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/fusepowered/ac/d$8;->d:Lcom/fusepowered/ac/d;

    iput-object p3, p0, Lcom/fusepowered/ac/d$8;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/fusepowered/ac/d$8;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/fusepowered/ac/d$8;->c:Lcom/fusepowered/ac/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fusepowered/ac/d$8;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-object v1, p0, Lcom/fusepowered/ac/d$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/d$8;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/fusepowered/ac/k;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/d$8;->c:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 225
    return-void
.end method
