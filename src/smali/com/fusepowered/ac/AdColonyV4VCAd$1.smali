.class Lcom/fusepowered/ac/AdColonyV4VCAd$1;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/AdColonyV4VCAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColonyV4VCAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColonyV4VCAd;Lcom/fusepowered/ac/d;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;->a:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;->a:Lcom/fusepowered/ac/AdColonyV4VCAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;->a:Lcom/fusepowered/ac/AdColonyV4VCAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyV4VCAd$1;->a:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 133
    :cond_0
    return-void
.end method
