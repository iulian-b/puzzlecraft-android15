.class public final Lcom/fusepowered/as/model/vast/HTMLAdResource;
.super Lcom/fusepowered/as/model/vast/AdResource;
.source "HTMLAdResource.java"


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "HTMLResource"

.field private static final serialVersionUID:J = 0x66228c79a516adc0L


# instance fields
.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/AdResource;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/HTMLAdResource;->html:Ljava/lang/String;

    return-object v0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fusepowered/as/model/vast/HTMLAdResource;->html:Ljava/lang/String;

    .line 20
    return-void
.end method
