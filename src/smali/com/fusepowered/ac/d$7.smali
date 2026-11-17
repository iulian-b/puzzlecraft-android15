.class Lcom/fusepowered/ac/d$7;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/fusepowered/ac/d$7;->c:Lcom/fusepowered/ac/d;

    iput-object p3, p0, Lcom/fusepowered/ac/d$7;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/fusepowered/ac/d$7;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fusepowered/ac/d$7;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-object v1, p0, Lcom/fusepowered/ac/d$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/d$7;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/fusepowered/ac/k;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V

    .line 214
    return-void
.end method
