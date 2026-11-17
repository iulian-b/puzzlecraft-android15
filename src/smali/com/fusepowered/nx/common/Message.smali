.class public Lcom/fusepowered/nx/common/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private displayText:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayText"
    .end annotation
.end field

.field private referenceName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ReferenceName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/fusepowered/nx/common/Message;->referenceName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/fusepowered/nx/common/Message;->displayName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/fusepowered/nx/common/Message;->displayText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/nx/common/Message;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/common/Message;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/nx/common/Message;->referenceName:Ljava/lang/String;

    return-object v0
.end method
