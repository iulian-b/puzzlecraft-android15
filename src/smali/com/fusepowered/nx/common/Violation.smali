.class public Lcom/fusepowered/nx/common/Violation;
.super Ljava/lang/Object;
.source "Violation.java"


# instance fields
.field private entity:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Entity"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/fusepowered/nx/common/Violation;->entity:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/fusepowered/nx/common/Violation;->message:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/fusepowered/nx/common/Violation;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/nx/common/Violation;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/nx/common/Violation;->message:Ljava/lang/String;

    return-object v0
.end method
