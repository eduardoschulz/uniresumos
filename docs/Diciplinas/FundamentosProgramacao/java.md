# Java

## 0.1 Resumo: 

Java é uma linguagem de programação de alto nível e orientada a objetos, desenvolvida pela Sun Microsystems na década de 90. Assim como muitas outras linguagens, Java é compilada, porém, seu código binário não é direcionado à arquitetura da máquina host; em vez disso, é compilado para a Máquina Virtual Java (JVM). A principal ideia por trás do Java é a capacidade de escrever código que pode ser executado em qualquer dispositivo que tenha uma JVM instalada. Isso difere de outras linguagens, como C, onde seria necessário ajustar o código para se adequar às bibliotecas do sistema, e o binário precisaria ser compilado para a arquitetura específica do host

### Classes

Uma classe é uma *template* usada para definir propriedades e métodos de uma classe de **objetos**.

```java
public class Animal {
  public String nome;

  public Animal(String nome){
    this.nome = nome;
  }
}

public class Cachorro extends Animal {
  public String cor;
  public String raca;

  public Cachorro(String nome, String cor, String raca){
    super(nome);
    this.cor = cor;
    this.raca = raca;
  }
  
  public void latir(){
    System.out.Println("woof woof!");
  }
}
```