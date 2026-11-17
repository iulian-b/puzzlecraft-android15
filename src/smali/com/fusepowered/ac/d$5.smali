.class Lcom/fusepowered/ac/d$5;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->a(DLcom/fusepowered/ac/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/fusepowered/ac/AdColonyAd;

.field final synthetic c:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;DLcom/fusepowered/ac/AdColonyAd;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fusepowered/ac/d$5;->c:Lcom/fusepowered/ac/d;

    iput-wide p3, p0, Lcom/fusepowered/ac/d$5;->a:D

    iput-object p5, p0, Lcom/fusepowered/ac/d$5;->b:Lcom/fusepowered/ac/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fusepowered/ac/d$5;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-wide v2, p0, Lcom/fusepowered/ac/d$5;->a:D

    iget-object v1, p0, Lcom/fusepowered/ac/d$5;->b:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/fusepowered/ac/u;->a(DLcom/fusepowered/ac/AdColonyAd;)V

    .line 148
    return-void
.end method
