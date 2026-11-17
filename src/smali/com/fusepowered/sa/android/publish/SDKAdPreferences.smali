.class public Lcom/fusepowered/sa/android/publish/SDKAdPreferences;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1efd77c3b82ae999L


# instance fields
.field private age:Ljava/lang/Integer;

.field private gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->age:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGender()Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public setAge(I)Lcom/fusepowered/sa/android/publish/SDKAdPreferences;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->age:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGender(Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDKAdPreferences [gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->age:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
